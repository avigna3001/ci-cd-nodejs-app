pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub-credentials') // Jenkins Credentials ID
        IMAGE_NAME = "shravani3001/simple-app"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/your-username/your-repo.git' // Replace with your repo URL
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([ credentialsId: 'dockerhub-credentials', url: '' ]) {
                    sh 'docker push $IMAGE_NAME'
                }
            }
        }
    }
}
