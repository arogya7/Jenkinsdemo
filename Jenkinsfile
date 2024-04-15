node {
    stage('Build Docker Image') {
        sh 'docker build -t devops-jenkinsserver .'
    }

    stage('Publish to DockerHub') {
        withDockerRegistry([credentialsId: 'dockerhub_credentials', url: 'https://registry.hub.docker.com']) {
            sh 'docker push devops-jenkinsserver:latest'
        }
    }
}
