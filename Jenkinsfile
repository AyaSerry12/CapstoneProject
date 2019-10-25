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
	
	stage('Cluster Deploy') {
      steps {
        sh 'sudo kubectl create -f kub_App.yaml'
		sh 'sudo kubectl create -f kub_App-Svc.yaml'
		sh 'sudo kubectl get svc'
      }
    }	
	stage('Test') {
      steps {
        sh 'curl localhost:32609'
      }
    }
	
  }
}