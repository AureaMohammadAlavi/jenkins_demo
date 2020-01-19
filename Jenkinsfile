pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        timeout(3, unit: 'SECONDS') {
          sh "./script.sh"
        }
      }
    }
  }
}
