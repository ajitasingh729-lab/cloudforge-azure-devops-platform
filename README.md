## CloudForge – End-to-End DevOps Platform
Overview

CloudForge is a full DevOps lifecycle implementation demonstrating containerization, CI/CD automation, orchestration, Infrastructure as Code, and configuration management using industry-standard tools.

The project simulates a real-world DevOps workflow from application build to automated deployment and infrastructure provisioning.

## Tech Stack

Docker

GitHub Actions (CI/CD)

Docker Compose

Kubernetes (KIND Cluster)

Terraform

Ansible

Flask (Python)

Nginx (Reverse Proxy)

## Architecture Flow

Code pushed to GitHub

GitHub Actions builds and pushes Docker image to Docker Hub

Application deployed using:

Docker Compose (multi-container setup with Nginx reverse proxy)

Kubernetes (Deployment and Service configuration)

Infrastructure provisioned using Terraform

Application deployment automated using Ansible

## Docker

Build image:

docker build -t ajtasingh/cloudforge-app:latest .

Run container:

docker run -p 5000:5000 ajtasingh/cloudforge-app

## Kubernetes Deployment
kubectl apply -f k8s/
kubectl get pods
kubectl get svc

## Terraform (Infrastructure as Code)
cd terraform
terraform init
terraform plan
terraform apply
terraform destroy

## Ansible Deployment
cd ansible
ansible-playbook -i inventory.ini deploy.yml


## Key DevOps Concepts Demonstrated

Container lifecycle management

CI/CD automation using GitHub Actions

Reverse proxy architecture with Nginx

Kubernetes Deployment and Service networking

Infrastructure provisioning using Terraform

State management and dependency handling in Terraform

Idempotent configuration management using Ansible

## Author
Ajita Singh
DevOps | Cloud | Infrastructure Automation


