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

        stage('Verify Workspace') {
            steps {
                sh '''
                echo "========== WORKSPACE =========="
                pwd

                echo ""
                ls -lah

                echo ""
                echo "========== REQUIRED FILES =========="
                test -f Dockerfile
                test -f docker-compose.yml
                test -f nginx.conf
                test -f testdb.sql

                echo ""
                echo "========== DOCKER COMPOSE VALIDATION =========="
                docker compose config

                echo ""
                echo "========== NGINX CONFIG =========="
                head -20 nginx.conf

                echo ""
                echo "Workspace verification completed."
                '''
            }
        }

        stage('Docker & Trivy Version') {
            steps {
                sh '''
                echo "========== DOCKER VERSION =========="
                docker --version

                echo ""
                docker compose version

                echo ""
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

                docker images | grep ${IMAGE_NAME}
                '''
            }
        }

        stage('Trivy Security Scan') {
            steps {
                sh '''
                echo "========== TRIVY SCAN =========="

                trivy image \
                    --severity HIGH,CRITICAL \
                    --exit-code 0 \
                    ${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }

        stage('Remove Old Deployment') {
            steps {
                sh '''
                echo "========== REMOVE OLD CONTAINERS =========="

                docker compose down --remove-orphans || true

                docker rm -f php-app nginx-web mysqlserver 2>/dev/null || true

                docker network prune -f || true

                docker image prune -f || true
                '''
            }
        }

        stage('Deploy Application') {
            steps {
                sh '''
                echo "========== DEPLOY =========="

                pwd

                ls -lah

                docker compose config

                docker compose up -d --build
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                sh '''
                echo "========== RUNNING CONTAINERS =========="

                docker ps -a

                echo ""
                docker compose ps
                '''
            }
        }

        stage('Health Check') {
            steps {
                sh '''
                echo "Waiting 20 seconds..."

                sleep 20

                echo ""
                echo "========== HTTP RESPONSE =========="

                curl -I http://localhost:9090 || true
                '''
            }
        }
    }

    post {

        success {

            echo "======================================="
            echo "CI/CD PIPELINE COMPLETED SUCCESSFULLY"
            echo "Git Checkout      : SUCCESS"
            echo "Docker Build      : SUCCESS"
            echo "Trivy Scan        : SUCCESS"
            echo "Docker Deployment : SUCCESS"
            echo "======================================="
        }

        failure {

            echo "======================================="
            echo "CI/CD PIPELINE FAILED"
            echo "======================================="

            sh '''
            echo ""
            echo "========== WORKSPACE =========="
            pwd
            ls -lah

            echo ""
            echo "========== DOCKER CONTAINERS =========="
            docker ps -a || true

            echo ""
            echo "========== DOCKER IMAGES =========="
            docker images || true

            echo ""
            echo "========== PHP LOG =========="
            docker logs php-app --tail=50 2>/dev/null || true

            echo ""
            echo "========== NGINX LOG =========="
            docker logs nginx-web --tail=50 2>/dev/null || true

            echo ""
            echo "========== MYSQL LOG =========="
            docker logs mysqlserver --tail=50 2>/dev/null || true
            '''
        }

        always {
            echo "Pipeline Finished"
            // Keep the workspace for debugging.
            // Uncomment the next line after the pipeline is stable.
            // cleanWs()
        }
    }
}
