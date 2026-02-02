pipeline {
    agent any
    
    environment {
        GITHUB_TOKEN = credentials('github-token')
    }
    
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
        
        stage('Deploy to Production') {
            steps {
                script {
                    def deployment = githubDeploy(
                        repo: 'MladenS23/Jenkinscode',
                        environment: 'production',
                        ref: env.GIT_COMMIT
                    )
                    
                    input message: 'Approve deployment to production?', ok: 'Deploy'
                    
                    githubDeployStatus(
                        deploymentId: deployment.id,
                        state: 'success'
                    )
                }
            }
        }
    }
}
