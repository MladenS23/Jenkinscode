pipeline {
    agent any
    environment {
        // This tells Jenkins exactly where to look for the tools you just installed
        PATH = "/usr/bin:/usr/local/bin:/bin:$PATH"
    }
    stages {
        stage('Verify Tools') {
            steps {
                sh 'docker --version'
                sh 'python3 --version'
            }
        }
        // ... rest of your stages
    }
}
