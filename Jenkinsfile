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
        mail to: "m.alavi1986@gmail.com", subject: "${currentBuild.fullDisplayName}", body: "${env.BUILD_URL}"
      }
    }

}
