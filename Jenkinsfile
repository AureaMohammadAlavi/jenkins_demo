pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        timeout(time: 7, unit: 'SECONDS') {
          retry(3) {
            sh "./script.sh"
          }
        }
      }
    }
  }
}
