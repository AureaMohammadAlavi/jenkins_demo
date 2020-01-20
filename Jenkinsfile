pipeline {
    agent any
    options { skipStagesAfterUnstable() }
    stages {
      stage('Build') {
        steps {
          sh "./gradlew clean check"
        }
      }
      stage('Fun') {
        steps {
          echo "hello"
        }
      }
    }
    post {
      always {
        junit 'build/test-results/**/*.xml'
      }
    }
}
