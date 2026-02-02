pipeline {
    agent any
    
    environment {
        REPO_URL = 'https://github.com/username/repo.git'
        BRANCH = 'main'
        CREDENTIALS_ID = 'github-creds'
    }
    
    triggers {
        githubPush()
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: "*/${BRANCH}"]],
                    extensions: [],
                    userRemoteConfigs: [[
                        url: "${REPO_URL}",
                        credentialsId: "${CREDENTIALS_ID}"
                    ]]
                ])
            }
        }
        
        stage('Build') {
            steps {
                sh 'echo "Building..."'
            }
        }
        
        stage('Test') {
            steps {
                sh 'echo "Testing..."'
            }
        }
        
        stage('Deploy') {
            when {
                branch 'main'
            }
            steps {
                sh 'echo "Deploying..."'
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
