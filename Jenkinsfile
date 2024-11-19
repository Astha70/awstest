Jenkinsfile

pipeline {
    agent any
    triggered{
      githubPush(){
      }
    }
    
    stages {
        stage('Build') {
            steps {
                script {
                    // Ensure Docker is available on the agent
                    if (isUnix()) {
                        sh "docker build . -t awstest"
                    } else {
                        bat "docker build . -t awstest"
                    }
                }
            }
        }
    }
    
    post {
        always {
            // Clean up
            echo 'Build completed'
        }
        success {
            echo 'Build succeeded'
        }
        failure {
            echo 'Build failed'
        }
    }
}
