pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build & Test') {
            steps {
                echo 'Building and testing...'
            }
        }
        
        stage('Request Approval') {
            steps {
                script {
                    def approvers = ['MladenStamatoski', 'teammate1', 'teammate2']
                    def userInput = input(
                        id: 'DeployApproval',
                        message: 'Approve deployment to production?',
                        ok: 'Deploy',
                        submitter: approvers.join(','),
                        submitterParameter: 'APPROVER'
                    )
                    echo "Approved by: ${APPROVER}"
                }
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying to production...'
            }
        }
    }
}
