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
                echo "========== Workspace =========="
                pwd
                ls -lah

                echo ""
                echo "Checking required files..."

                test -f Dockerfile
                test -f docker-compose.yml
                test -f nginx.conf
                '''
            }
        }

        stage('Docker & Trivy Version') {
            steps {
                sh '''
                echo "========== Docker =========="
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
                echo "========== Building Docker Image =========="

                docker build \
                -t ${IMAGE_NAME}:${IMAGE_TAG} .

                docker images | grep ${IMAGE_NAME}
                '''
            }
        }

        stage('Trivy Image Scan') {
            steps {
                sh '''
                echo "========== Trivy Scan =========="

                trivy image \
                  --severity HIGH,CRITICAL \
                  --format table \
                  --exit-code 0 \
                  ${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }

        stage('Clean Previous Deployment') {
            steps {
                sh '''
                echo "========== Removing Old Containers =========="

                docker compose down --remove-orphans || true

                docker rm -f php-app nginx-web mysqlserver 2>/dev/null || true

                docker image prune -f || true
                '''
            }
        }

        stage('Deploy Application') {
            steps {
                sh '''
                echo "========== Deploying =========="

                docker compose up -d --build
                '''
            }
        }

        stage('Verify Containers') {
            steps {
                sh '''
                echo "========== Running Containers =========="

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
                echo "========== PHP =========="
                docker logs php-app --tail 20 || true

                echo ""
                echo "========== Nginx =========="
                docker logs nginx-web --tail 20 || true

                echo ""
                echo "========== MySQL =========="
                docker logs mysqlserver --tail 20 || true

                echo ""
                echo "========== Application =========="
                curl -I http://localhost:9090 || true
                '''
            }
        }
    }

    post {

        success {
            echo "=============================================="
            echo "CI/CD PIPELINE COMPLETED SUCCESSFULLY"
            echo "Git Checkout      : SUCCESS"
            echo "Docker Build      : SUCCESS"
            echo "Trivy Scan        : SUCCESS"
            echo "Docker Deployment : SUCCESS"
            echo "Application URL   : http://SERVER-IP:9090"
            echo "=============================================="
        }

        failure {
            echo "=============================================="
            echo "CI/CD PIPELINE FAILED"
            echo "Please check the Jenkins console output."
            echo "=============================================="

            sh '''
            echo ""
            echo "========== Docker Containers =========="
            docker ps -a || true

            echo ""
            echo "========== Compose Logs =========="
            docker compose logs --tail=100 || true
            '''
        }

        always {
            cleanWs()
        }
    }
}
