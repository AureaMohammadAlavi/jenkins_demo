pipeline {
    agent any
    options { skipStagesAfterUnstable() }
    stages {
      stage('Build') {
        steps {
          sh "./gradlew clean build"
        }

        post {
          always {
            junit 'build/test-results/**/*.xml'
            arhiveArtifacts artifacts: "build/libs/*.jar"
          }
        }
      }
      stage('Fun') {
        steps {
          echo "hello"
        }
      }
    }

}
