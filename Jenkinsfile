pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                // Ensure the correct repository URL and branch
                git branch: 'main', url: 'https://github.com/2200030375/bookstore-app-cicd.git'
            }
        }

        stage('Deploy App') {
            steps {
                script {
                    try {
                        // Deploy using Ansible
                        bat 'ansible-playbook ansible/playbook.yml -i ansible/inventory'
                    } catch (Exception e) {
                        // Rollback if deployment fails
                        echo "Deployment failed. Triggering rollback..."
                        bat 'ansible-playbook ansible/rollback.yml -i ansible/inventory'
                    }
                }
            }
        }
    }
}
