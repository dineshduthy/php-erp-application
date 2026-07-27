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

        stage('Workspace Information') {
            steps {
                sh '''
                echo "========== Workspace =========="
                pwd
                echo ""
                ls -lah
                '''
            }
        }

        stage('Check Docker & Trivy') {
            steps {
                sh '''
                echo "========== Docker Version =========="
                docker --version

                echo "========== Docker Compose =========="
                docker compose version || true

                echo "========== Trivy Version =========="
                trivy --version
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                echo "========== Building Docker Image =========="
                docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
                '''
            }
        }

        stage('List Docker Images') {
            steps {
                sh '''
                echo "========== Available Images =========="
                docker images
                '''
            }
        }

        stage('Trivy Security Scan') {
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

        stage('Stop Existing Containers') {
            steps {
                sh '''
                echo "========== Stopping Existing Containers =========="
                docker compose down || true
                '''
            }
        }

        stage('Deploy Application') {
            steps {
                sh '''
                echo "========== Deploying Containers =========="
                docker compose up -d --build
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                sh '''
                echo "========== Running Containers =========="
                docker ps

                echo ""
                echo "========== Compose Status =========="
                docker compose ps
                '''
            }
        }

        stage('Application Health Check') {
            steps {
                sh '''
                echo "Waiting for application..."
                sleep 15

                echo "========== Health Check =========="
                curl -I http://localhost:9090 || true
                '''
            }
        }
    }

    post {

        success {
            echo "=========================================="
            echo "CI/CD PIPELINE COMPLETED SUCCESSFULLY"
            echo "Docker Image Built Successfully"
            echo "Trivy Scan Completed"
            echo "Application Deployed Successfully"
            echo "=========================================="
        }

        failure {
            echo "=========================================="
            echo "CI/CD PIPELINE FAILED"
            echo "Check Jenkins Console Output"
            echo "=========================================="
        }

        always {
            cleanWs()
        }
    }
}
