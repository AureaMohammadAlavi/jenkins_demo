pipeline {
    agent any
    options { skipStagesAfterUnstable() }
    stages {
      stage('Build') {
        steps {
          sh "./gradlew check"
        }
      }
    }
    post {
      always {
        junit 'build/test-results/**/*.xml'
      }
    }
}
