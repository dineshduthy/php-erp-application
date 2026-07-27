pipeline {
    agent any

    environment {
        IMAGE_NAME = "php-erp-application"
        IMAGE_TAG = "latest"
        COMPOSE_FILE = "docker-compose.yml"
        REPORT = "trivy-report.html"
    }

    options {
        timestamps()
        disableConcurrentBuilds()
    }

    triggers {
        githubPush()
    }

    stages {

        stage('Checkout Source Code') {
            steps {
                checkout scm
            }
        }

        stage('Workspace Details') {
            steps {
                sh '''
                echo "Current Workspace"
                pwd

                echo "Workspace Files"
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

        stage('Docker Images') {
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
                --format table \
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
                    reportFiles: "${REPORT}",
                    reportName: "Trivy Security Report"
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
                docker ps
                docker compose ps
                '''
            }
        }

        stage('Application Health Check') {
            steps {
                sh '''
                sleep 15

                curl -I http://localhost:9090 || true
                '''
            }
        }
    }

    post {

        success {

            emailext(
                subject: "SUCCESS : ${JOB_NAME} #${BUILD_NUMBER}",
                mimeType: 'text/html',
                body: """
                <h2>PHP ERP CI/CD Pipeline Success</h2>

                <table border="1" cellpadding="6">
                    <tr>
                        <th>Project</th>
                        <td>${JOB_NAME}</td>
                    </tr>

                    <tr>
                        <th>Build</th>
                        <td>${BUILD_NUMBER}</td>
                    </tr>

                    <tr>
                        <th>Status</th>
                        <td style="color:green;"><b>SUCCESS</b></td>
                    </tr>

                    <tr>
                        <th>Docker Image</th>
                        <td>${IMAGE_NAME}:${IMAGE_TAG}</td>
                    </tr>

                    <tr>
                        <th>Build URL</th>
                        <td>
                            <a href="${BUILD_URL}">
                                ${BUILD_URL}
                            </a>
                        </td>
                    </tr>
                </table>

                <br>

                <b>The application has been deployed successfully.</b>
                """,
                to: "dineshkrishnamoorthy1005@gmail.com"
            )
        }

        failure {

            emailext(
                subject: "FAILED : ${JOB_NAME} #${BUILD_NUMBER}",
                mimeType: 'text/html',
                body: """
                <h2>PHP ERP CI/CD Pipeline Failed</h2>

                <table border="1" cellpadding="6">
                    <tr>
                        <th>Project</th>
                        <td>${JOB_NAME}</td>
                    </tr>

                    <tr>
                        <th>Build</th>
                        <td>${BUILD_NUMBER}</td>
                    </tr>

                    <tr>
                        <th>Status</th>
                        <td style="color:red;"><b>FAILED</b></td>
                    </tr>

                    <tr>
                        <th>Console Log</th>
                        <td>
                            <a href="${BUILD_URL}">
                                ${BUILD_URL}
                            </a>
                        </td>
                    </tr>
                </table>

                <br>

                Please review the Jenkins console log.
                """,
                to: "dineshkrishnamoorthy1005@gmail.com"
            )
        }

        always {
            cleanWs()
        }
    }
}
