pipeline {
    agent any
    environment {
        PATH = "/usr/bin:/usr/local/bin:/bin:$PATH"
    }
    stages {
        stage('Verify Tools') {
            steps {
                sh 'docker --version'
                sh 'python3 --version'
            }
        }
        stage('Build & Run POC') {
            steps {
                // 1. Build the image from your Dockerfile
                sh 'docker build -t my-python-app .'
                
                // 2. Kill any old version of the app running
                sh 'docker rm -f my-running-app || true'
                
                // 3. Start the app on port 5001
                sh 'docker run -d --name my-running-app -p 5001:5000 my-python-app'
                
                echo "ALIVE! Check http://localhost:5001"
            }
        }
    }
}
