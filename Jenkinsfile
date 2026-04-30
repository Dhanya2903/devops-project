pipeline {
    agent any

    environment {
        IMAGE_NAME = "devops-app"
    }

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/Dhanya2903/devops-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops-app:latest .'
            }
        }

        stage('Load Image to Minikube') {
            steps {
                bat 'minikube image load devops-app:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                bat 'kubectl apply -f k8s/deployment.yaml'
                bat 'kubectl apply -f k8s/service.yaml'
            }
        }

        stage('Restart Deployment') {
            steps {
                bat 'kubectl rollout restart deployment devops-app'
            }
        }
    }

    post {
        success {
            echo 'Deployment Successful 🎉'
        }
        failure {
            echo 'Deployment Failed ❌'
        }
    }
}
