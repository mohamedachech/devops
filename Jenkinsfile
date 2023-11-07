pipeline {
    agent any 
    stages {
        stage('Git Checkout') { 
            steps {
                echo 'pulling..'
                git branch: 'main',
                url : 'https://github.com/mohamedachech/devops.git'
            }
        }
        stage('build') { 
            steps {
                mvn clean install
            }
        }
        stage('test') { 
            steps {
                mvn test
            }
        }
    }
}
