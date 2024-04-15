pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('devops-jenkinsserver')
                }
            }
        }
        stage('Push to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_credentials') {
                        docker.image('devops-jenkinsserver').push('latest')
                    }
                }
            }
        }
        stage('Display Dockerhub Content') {
            steps {
                script {
                    sh 'docker search devops-jenkinsserver'
                }
            }
        }
    }
}
