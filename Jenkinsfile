pipeline {
    agent any

    environment {
        IMAGE_NAME = "php-erp-application"
        IMAGE_TAG  = "latest"
        REPORT     = "trivy-report.html"
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
                echo "===== Workspace ====="
                pwd

                echo "===== Files ====="
                ls -lah
                '''
            }
        }

        stage('Docker Version') {
            steps {
                sh '''
                docker --version
                docker compose version
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
                '''
            }
        }

        stage('List Docker Images') {
            steps {
                sh '''
                docker images
                '''
            }
        }

        stage('Trivy Security Scan') {
            steps {
                sh '''
                trivy image \
                  --severity HIGH,CRITICAL \
                  --exit-code 0 \
                  ${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }

        stage('Generate Trivy HTML Report') {
            steps {
                sh '''
                trivy image \
                  --format template \
                  --template "@contrib/html.tpl" \
                  -o ${REPORT} \
                  ${IMAGE_NAME}:${IMAGE_TAG} || true
                '''
            }
        }

        stage('Publish Trivy Report') {
            steps {
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: '.',
                    reportFiles: 'trivy-report.html',
                    reportName: 'Trivy Security Report'
                ])
            }
        }

        stage('Stop Existing Containers') {
            steps {
                sh '''
                docker compose down || true
                '''
            }
        }

        stage('Deploy Application') {
            steps {
                sh '''
                docker compose up -d --build
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                sh '''
                echo "===== Running Containers ====="
                docker ps

                echo "===== Compose Status ====="
                docker compose ps
                '''
            }
        }

        stage('Application Health Check') {
            steps {
                sh '''
                sleep 15

                echo "===== Application Check ====="
                curl -I http://localhost:9090 || true
                '''
            }
        }
    }

    post {

        success {
            echo '========================================='
            echo 'CI/CD Pipeline Completed Successfully'
            echo 'Docker Image Built Successfully'
            echo 'Trivy Scan Completed'
            echo 'Application Deployed Successfully'
            echo '========================================='
        }

        failure {
            echo '========================================='
            echo 'CI/CD Pipeline Failed'
            echo 'Please check Jenkins Console Output'
            echo '========================================='
        }

        always {
            cleanWs()
        }
    }
}
