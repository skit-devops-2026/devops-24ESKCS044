pipeline {
    agent any

    stages {
        stage('Install') {
            steps {
                sh 'make install'
            }
        }

        stage('Test') {
            steps {
                sh 'make test'
            }
        }

        stage('Build') {
            steps {
                sh 'make build'
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
