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
    post {
      always {
        deleteDir()
        mail to: "m.alavi1986@gmail.com", subject: "${currentBuild.fullDisplayName} ${currentBuild.currentResult}", body: "${env.BUILD_URL}"
      }

      success {
        slackSend channel: "#builds", color: "good", message: "The pipeline ${currentBuild.fullDisplayName} completed successfully"
      }

    }

}
