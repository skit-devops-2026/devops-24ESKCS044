pipeline {
    agent any

    stages {
        stage('Install') {
            steps {
                bat 'make install'
            }
        }

        stage('Test') {
            steps {
                bat 'make test'
            }
        }

        stage('Build') {
            steps {
                bat 'make build'
            }
        }
    }

    post {
        success {
            echo 'Blood Bank Management System pipeline completed successfully.'
        }

        failure {
            echo 'Blood Bank Management System pipeline failed.'
        }
    }
}
