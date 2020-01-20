pipeline {
    agent any
    options { skipStagesAfterUnstable() }
    stages {
      stage('Build') {
        steps {
          sh "./gradlew clean check"
        }
      }
    }
    post {
      always {
        junit 'build/test-results/**/*.xml'
      }
    }
}
