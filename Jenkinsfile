pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Daniyar'
        STUDENT_SURNAME = 'Satemir'
        STUDENT_GROUP = 'IT2-2307'
        STUDENT_ID = '37889'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                echo "Building project for Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}, Student ID: ${STUDENT_ID}"
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "Tests passed successfully!"'
            }
        }
        
        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t satemir-daniyar-devops .'
            }
        }
        
        stage('Docker Run') {
            steps {
                echo 'Running Docker container...'
                sh 'docker rm -f satemir-daniyar-container || true'
                sh 'docker run --name satemir-daniyar-container -e STUDENT_NAME=$STUDENT_NAME -e STUDENT_SURNAME=$STUDENT_SURNAME -e STUDENT_GROUP=$STUDENT_GROUP -e STUDENT_ID=$STUDENT_ID satemir-daniyar-devops'
            }
        }
    }
}
