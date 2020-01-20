pipeline {
    agent any 
    stages {
      stage('Build') {
        steps {
          ./gradlew check
        }
      }
    }
    post {
      always {
        junit 'build/test-results/**/*.xml'
      }
    }
}
