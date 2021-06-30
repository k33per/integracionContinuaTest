
// Ivan Barrios 1510010997

environment {
    registry = "k33per/integracionContinua"
    registryCredential = 'dockerhub'
    dockerImage = ''
}

node('linux'){
    
    stage('SCM') {
        checkout scm
    }
    stage('Maven build') {
		sh 'mvn package'
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
}
