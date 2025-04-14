pipeline {
    agent any

    triggers {
        githubPush() // Triggered when GitHub webhook receives a push
    }

    stages {
        stage('Print Time') {
            steps {
                script {
                    def currentTime = new Date()
                    echo "Webhook triggered at: ${currentTime}"
                }
            }
        }
    }
}
