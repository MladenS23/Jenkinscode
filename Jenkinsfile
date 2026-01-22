pipeline {
    agent any
    stages {
        stage('Deploy Locally') {
            steps {
                // This removes the need for SSH or IP addresses
                sh 'mkdir -p /var/jenkins_home/deployed_site'
                sh 'rsync -avz index.html /var/jenkins_home/deployed_site/'
                echo 'SUCCESS: Files moved locally inside Jenkins!'
            }
        }
    }
}
