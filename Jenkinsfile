stage('Deploy with Docker') {
    steps {
        // Build the image from your Dockerfile
        sh 'docker build -t my-python-app .'
        
        // Stop and remove the old container if it exists
        sh 'docker rm -f my-running-poc || true'
        
        // Start the new container
        sh 'docker run -d --name my-running-poc -p 5001:5000 my-python-app'
    }
}
