pipeline {
  agent any

  stages {
    
    stage('Clone Repository') {
      steps {
        script {
          echo 'Cloning repository...'
          sh 'git clone "https://github.com/roydendsouza31/2309_ISA2.git"'
        }
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          echo 'Building Docker image...'
          sh 'docker build -t flaskapp:latest .'
        }
      }
    }

    stage('Delete container named 2309') {
      steps {
        script {
          echo 'Deleting Docker container...'
          sh 'docker rm 2309'
        }
      }
    }

    stage('Create and run container 2309 from image in daemon mode') {
      steps {
        script {
          echo 'Create container'
          sh 'docker run -d --name 2309 -p 5000:5000 flaskapp:latest'
        }
      }
    }
    
  }
}
