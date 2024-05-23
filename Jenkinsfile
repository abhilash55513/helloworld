pipeline {
    agent any

    tools {
        jdk 'Java'
        maven 'Maven'
    }
  
    stages {
        stage('Git checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/abhilash55513/helloworld.git'
            }
        }
        stage('Maven build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t helloworld:v1 ${WORKSPACE}'
            }
        }
        stage('Docker Deploy') {
            steps {
                script {
                    sh 'docker rm -f $(docker ps -a -q)'
                    sh 'docker run -dt -p 9090:8080 helloworld:v1'
                }
            }
        }
    }
}
