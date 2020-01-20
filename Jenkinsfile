pipeline {
    agent { label '!windows'}
    environment {
      DATABASE_ENGINE = 'Postgres'
      DATABASE_USERNAME = 'mohammad'
    }
    stages {
      stage('Build') {
        steps {
          echo "DATABASE_ENGINE: $DATABASE_ENGINE"
          echo "DATABASE_USERNAME: $DATABASE_USERNAME"
          sh "printenv"
        }
      }
    }
}
