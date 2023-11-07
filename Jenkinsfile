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
        stage('Test') { 
            steps {
                echo 'test'
            }
        }
        stage('Deploy') { 
            steps {
                echo 'deploying'
            }
        }
    }
}
