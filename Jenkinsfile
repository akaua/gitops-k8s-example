pipeline {
    agent none
    stages {
        
        stage('Dependencies') {
            // agent {
            //     docker { image 'python:3.7.3-stretch' }
            // }
            steps {
                sh 'echo teste'
            }
            // steps {
            //     // def qaImage = docker.build("python:3.7.3-stretch")
            //     // qaImage.inside {
            //     //     sh 'python3 -m venv venv'
            //     //     sh '. venv/bin/activate'
            //     //     sh 'make install'
            //     //     // Install hadolint
            //     //     sh 'wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64'
            //     //     sh 'chmod +x /bin/hadolint'
            //     // }
            // }
        }
        stage('Lint') {
            steps {
                sh 'echo teste'
                // qaImage.inside {
                //     sh '. venv/bin/activate'
                //     sh 'make lint'
                // }
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo test'
            }
        }
    }
}