pipeline {
    agent any
    tool name: 'java11', type: 'jdk'
    options { skipStagesAfterUnstable() }
    stages {
      stage('Build') {
        steps {
          sh "./gradlew clean build"
        }

        post {
          always {
            junit 'build/test-results/**/*.xml'
            archiveArtifacts artifacts: "build/libs/*.jar"
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
