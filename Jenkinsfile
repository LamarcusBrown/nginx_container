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
                echo 'something'
            }
        }  
        stage('Build NGINX Image') {
            steps {
                sh 'docker tag centos local-centos'
            }
        }  
        stage('Run NGINX Contianer') {
            steps {
                echo 'something'
            }
        }  
    }
}