pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning from GitHub...'
            }
        }

        stage('Build') {
            steps {
                bat 'echo Building on Windows...'
            }
        }

        stage('Deploy App') {
            steps {
                script {
                    def status = bat(script: 'your_deploy_script.bat', returnStatus: true)
                    if (status != 0) {
                        echo 'Deployment failed. Triggering rollback...'
                        bat 'your_rollback_script.bat'
                        error('Deployment failed and rollback executed.')
                    } else {
                        echo 'Deployment successful.'
                    }
                }
            }
        }
    }
}
