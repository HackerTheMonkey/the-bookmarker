pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
        stage('test this thing') {
            steps {
                echo "testing 123"   
            }
        }
        stage('deployment') {
            steps {
                echo "deployment"   
            }
        }
    }
}
