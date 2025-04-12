# Bookstore App CI/CD with Automated Rollback

This project demonstrates a complete CI/CD pipeline using **Git**, **Jenkins**, and **Ansible** with automated rollback on deployment failure.

## 📁 Project Structure

```
bookstore-app/
├── Jenkinsfile
└── ansible/
    ├── inventory
    ├── playbook.yml
    └── rollback.yml
```

## 🛠 Prerequisites

- Jenkins (running on port 8085)
- Node.js and PM2 installed on the target server
- SSH access set up for Ansible
- Git installed

## 🚀 How It Works

1. Jenkins pulls the latest code from GitHub.
2. Ansible deploys the application to the target server.
3. If deployment fails, Jenkins automatically triggers the rollback playbook.

## 📜 Setup Instructions

1. Update `ansible/inventory` with your server details.
2. Push a Jenkins-compatible repo with this structure.
3. Create a Jenkins Pipeline Job pointing to this repo.
4. Trigger builds and test rollback by pushing bad code.
