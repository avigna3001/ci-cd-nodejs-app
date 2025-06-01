pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub-credentials') 
        IMAGE_NAME = "shravani3001/simple-app"
    }

    stages {
        stage('Clean Workspace') {
            steps {
                echo 'Cleaning workspace...'
                sh 'rm -rf *'
            }
        }

        stage('Clone Repo') {
            steps {
                git 'https://github.com/avigna3001/ci-cd-nodejs-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-credentials', url: '']) {
                    sh 'docker push $IMAGE_NAME'
                }
            }
        }
    }
}

