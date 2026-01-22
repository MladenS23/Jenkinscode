pipeline {
    agent any 

    stages {
        stage('Clone') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Compiling/Packaging code...'
                // Example: sh 'npm install' or 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Pushing code to production server...'
                // This uses SSH to send files to your server
                sshput remote: 'my-web-server', from: 'dist/', into: '/var/www/html'
            }
        }
    }
}
