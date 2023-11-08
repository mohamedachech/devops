pipeline {
        environment { 
        registry = "maamoun1925/devops-backend" 
        registryCredential = 'dockerhub_id' 
        dockerImage = '' 
    }
    agent any 
    stages {
        stage('Git Checkout') { 
            steps {
                echo 'pulling..'
                git branch: 'main',
                url: 'https://github.com/mohamedachech/devops.git'
            }
        }
        stage('build') { 
            steps {
                sh 'mvn clean install'
            }
        }
        stage('test') { 
            steps {
                sh 'mvn test'
            }
        }
        stage('nexus') { 
            steps {
                sh 'mvn deploy'
            }
        }
    
        stage('Building our image') { 
            steps { 
                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }
        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
        stage('Cleaning up') { 
            steps { 
                sh "docker rmi $registry:$BUILD_NUMBER" 
            }
        } 
    }
}
