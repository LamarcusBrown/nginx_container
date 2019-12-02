pipeline {
agent any

    stages {
        stage('Pull CentOS Image') {
            steps {
                sh 'docker pull centos'
            }
        }  

        stage('Tag CentOS Image') {
            steps {
                sh 'docker tag centos local-centos'
            }
        }  
        stage('Build NGINX Image') {
            steps {
                sh 'docker build -t nginx .'
            }
        }  
        stage('Run NGINX Contianer') {
            steps {
                sh 'docker run -d --publish-all=true --name my-website nginx'
            }
        }  
    }
}