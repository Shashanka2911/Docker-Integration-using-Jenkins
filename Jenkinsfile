pipeline {
    agent any
    tools {
        maven 'maven_3_5_0'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout([$class: 'GitSCM',
                    branches: [[name: '*/main']],
                    extensions: [],
                    userRemoteConfigs: [[url: 'https://github.com/Shashanka2911/Docker-Integration-using-Jenkins']]
                ])
                bat 'mvn clean install'
            }
        }

        stage('Build docker image') {
            steps {
                script {
                    bat 'docker build -t shashanka2911/devops-integration .'
                }
            }
        }

        stage('Push image to Hub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                        bat 'docker login -u shashanka2911 -p %dockerhubpwd%'
                    }
                    bat 'docker push shashanka2911/devops-integration'
                }
            }
        }

        stage('Deploy to k8s') {
            steps {
                script {
                    kubernetesDeploy(configs: 'deploymentservice.yaml', kubeconfigId: 'k8sconfigpwd')
                }
            }
        }
    }
}
