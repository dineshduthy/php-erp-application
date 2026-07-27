pipeline {

    agent any

    environment {

        IMAGE_NAME = "php-erp-application"
        IMAGE_TAG = "latest"

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

        stage('Workspace Info') {

            steps {

                sh '''

                pwd

                ls -lah

                '''

            }

        }

        stage('Docker Version') {

            steps {

                sh '''

                docker --version

                docker compose version

                trivy --version

                '''

            }

        }

        stage('Build PHP Image') {

            steps {

                sh '''

                docker build -t php-erp-application:latest .

                '''

            }

        }

        stage('Trivy Scan') {

            steps {

                sh '''

                trivy image \
                  --severity HIGH,CRITICAL \
                  --exit-code 0 \
                  php-erp-application:latest

                '''

            }

        }

        stage('Remove Old Containers') {

            steps {

                sh '''

                docker compose down --remove-orphans || true

                docker rm -f php-app nginx-web mysqlserver 2>/dev/null || true

                docker image prune -f

                '''

            }

        }

        stage('Deploy') {

            steps {

                sh '''

                docker compose up -d --build

                '''

            }

        }

        stage('Verify') {

            steps {

                sh '''

                docker ps

                docker compose ps

                '''

            }

        }

        stage('Health Check') {

            steps {

                sh '''

                sleep 20

                curl http://localhost:9090 || true

                '''

            }

        }

    }

    post {

        success {

            echo "====================================="

            echo "CI/CD SUCCESS"

            echo "GitHub Checkout SUCCESS"

            echo "Docker Build SUCCESS"

            echo "Trivy Scan SUCCESS"

            echo "Deployment SUCCESS"

            echo "====================================="

        }

        failure {

            echo "====================================="

            echo "CI/CD FAILED"

            docker ps -a

            echo "====================================="

        }

    }

}
