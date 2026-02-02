pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', 
                    credentialsId: 'github-creds', 
                    url: 'https://github.com/MladenS23/Jenkinscode.git'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
