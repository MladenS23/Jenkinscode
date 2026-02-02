pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MladenS23/Jenkinscode.git'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Waiting for GitHub approval...'
            }
        }
    }
}
