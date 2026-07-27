pipeline {

    agent any

    environment {
        IMAGE_NAME = "php-erp-application"
        IMAGE_TAG  = "latest"
    }

    options {
        timestamps()
        disableConcurrentBuilds()
    }

    triggers {
        githubPush()
    }

    stages {

        stage('Checkout Source') {
            steps {
                checkout scm
            }
        }

        stage('Workspace Information') {
            steps {
                sh '''
                echo "========== WORKSPACE =========="
                pwd

                echo ""
                ls -lah

                echo ""
                echo "Checking required files..."

                test -f Dockerfile
                test -f docker-compose.yml
                test -f nginx.conf
                test -f testdb.sql

                echo ""
                echo "All required files exist."
                '''
            }
        }

        stage('Docker & Trivy Version') {
            steps {
                sh '''
                echo "========== DOCKER =========="
                docker --version

                echo ""
                docker compose version || true

                echo ""
                echo "========== TRIVY =========="
                trivy --version
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                echo "========== BUILDING IMAGE =========="

                docker build \
                  -t ${IMAGE_NAME}:${IMAGE_TAG} .

                echo ""
                docker images | grep ${IMAGE_NAME}
                '''
            }
        }

        stage('Trivy Security Scan') {
            steps {
                sh '''
                echo "========== TRIVY IMAGE SCAN =========="

                trivy image \
                    --severity HIGH,CRITICAL \
                    --format table \
                    --exit-code 0 \
                    ${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }

        stage('Cleanup Previous Deployment') {
            steps {
                sh '''
                echo "========== CLEANUP =========="

                docker compose down --remove-orphans || true

                docker rm -f php-app nginx-web mysqlserver 2>/dev/null || true

                docker image prune -f || true
                '''
            }
        }

        stage('Debug Workspace') {
            steps {
                sh '''
                echo "========== DEBUG =========="

                pwd

                echo ""
                ls -lah

                echo ""
                ls -l nginx.conf || true

                echo ""
                ls -l docker-compose.yml || true
                '''
            }
        }

        stage('Deploy Application') {
            steps {
                sh '''
                echo "========== DEPLOY =========="

                docker compose up -d --build
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                sh '''
                echo "========== RUNNING CONTAINERS =========="

                docker ps

                echo ""
                docker compose ps
                '''
            }
        }

        stage('Health Check') {
            steps {
                sh '''
                echo "Waiting for services..."
                sleep 20

                echo ""
                echo "========== APPLICATION =========="
                curl -I http://localhost:9090 || true

                echo ""
                echo "========== PHP LOG =========="
                docker logs php-app --tail=20 || true

                echo ""
                echo "========== NGINX LOG =========="
                docker logs nginx-web --tail=20 || true

                echo ""
                echo "========== MYSQL LOG =========="
                docker logs mysqlserver --tail=20 || true
                '''
            }
        }

    }

    post {

        success {

            echo "=========================================="
            echo "CI/CD PIPELINE COMPLETED SUCCESSFULLY"
            echo "=========================================="
            echo "Git Checkout      : SUCCESS"
            echo "Docker Build      : SUCCESS"
            echo "Trivy Scan        : SUCCESS"
            echo "Docker Deployment : SUCCESS"
            echo "Application URL   : http://SERVER-IP:9090"
            echo "=========================================="

            cleanWs()
        }

        failure {

            echo "=========================================="
            echo "CI/CD PIPELINE FAILED"
            echo "=========================================="

            sh '''
            echo ""
            echo "========== DOCKER CONTAINERS =========="
            docker ps -a || true

            echo ""
            echo "========== DOCKER IMAGES =========="
            docker images || true

            echo ""
            echo "========== DOCKER COMPOSE LOGS =========="
            docker compose logs --tail=100 || true

            echo ""
            echo "========== PHP LOG =========="
            docker logs php-app --tail=50 || true

            echo ""
            echo "========== NGINX LOG =========="
            docker logs nginx-web --tail=50 || true

            echo ""
            echo "========== MYSQL LOG =========="
            docker logs mysqlserver --tail=50 || true
            '''

            cleanWs()
        }

        always {
            echo "Pipeline Finished."
        }
    }
}
