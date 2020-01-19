pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo "hello world"'
                sh '''
                  ps aux
                  ls -la
                '''
            }
        }
    }
}
