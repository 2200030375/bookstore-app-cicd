pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/2200030375/book-app-cicd.git'
            }
        }

        stage('Deploy App') {
            steps {
                script {
                    try {
                        sh 'ansible-playbook ansible/playbook.yml -i ansible/inventory'
                    } catch (Exception e) {
                        echo "Deployment failed. Triggering rollback..."
                        sh 'ansible-playbook ansible/rollback.yml -i ansible/inventory'
                    }
                }
            }
        }
    }
}