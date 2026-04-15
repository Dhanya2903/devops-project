pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                echo 'Cloning from GitHub...'
            }
        }

        stage('Build') {
            steps {
                echo 'Building application...'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker Image...'
                sh 'docker build -t devops-app .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to Kubernetes...'
            }
        }
    }
}