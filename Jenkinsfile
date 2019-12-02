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
                echo 'Clean up old containers'
                sh 'docker rm -f my-website'
                echo 'Launch new container'
                sh 'docker run -d --publish-all=true -p 8081:80 --hostname my-website --name my-website nginx'
            }
        }  
    }
}