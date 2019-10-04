pipeline {
    agent any
    stages {
        
        stage('Dependencies') {
            agent {
                docker { image 'python:3.7.3-stretch' }
            }
            steps {
                sh 'python3 -m venv venv'
                sh '. venv/bin/activate'
                sh 'make install'
                // Install hadolint
                sh 'wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64'
                sh 'chmod +x /bin/hadolint'
            }
        }
        stage('Lint') {
            agent {
                docker { image 'python:3.7.3-stretch' }
            }
            steps {
                sh 'python3 -m venv venv'
                sh '. venv/bin/activate'
                sh 'make install'
                // Install hadolint
                sh 'wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64'
                sh 'chmod +x /bin/hadolint'
                sh 'make lint'
            }
        }
        stage('Push image') {
            steps {
                script {
                    
                    def predictImage = docker.build("akaua/predict_app:${env.BUILD_ID}", ". -f ./Dockerfile")
                    predictImage.push()

                    predictImage.push('latest')
                }
            }
        }
    }
}