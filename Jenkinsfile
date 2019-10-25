pipeline {
  agent any
  stages {
    stage('Lint Docker') {
      steps {
        sh 'hadolint Dockerfile'
      }
    }
	stage('Build Docker Image') {
      steps {
        sh 'sudo docker build --tag=ml_project .'
		sh 'sudo docker tag ml_project:latest ayaserry/ml_project:latest'
		sh 'sudo docker push ayaserry/ml_project:latest'
      }
    }
  }
}