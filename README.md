# 🚀 Terraform AKS DevOps Project

This is a real-world DevOps project that provisions an **Azure Kubernetes Service (AKS)** cluster using **Terraform**, deploys a sample **Nginx app** using **Kubernetes**, and securely manages secrets with **Azure Key Vault** and **GitHub Actions**.

---

## 🛠️ Tools & Technologies Used

- **Terraform** – Infrastructure as Code (IaC)
- **Microsoft Azure** – Cloud provider
- **AKS (Azure Kubernetes Service)** – Managed Kubernetes
- **Azure Key Vault** – Secret management
- **GitHub Actions** – CI/CD automation
- **Kubernetes** – Container orchestration
- **kubectl** – CLI for Kubernetes

---

## 🧱 Architecture Overview

GitHub Actions → Terraform → Azure Resources (AKS + Key Vault) ↘ kubectl → Deploy Nginx + Inject Secrets


- **AKS Cluster** is provisioned via Terraform
- **Azure Key Vault** stores app secrets securely
- **GitHub Actions** pulls secrets from Key Vault and deploys them as Kubernetes secrets
- **Nginx** container uses the secret via environment variable

---

## 📂 Project Structure

terraform-aks-devops/ ├── main.tf ├── provider.tf ├── variables.tf ├── outputs.tf ├── terraform.tfvars ├── modules/ │ └── aks/ │ ├── main.tf │ ├── variables.tf │ └── outputs.tf ├── k8s/ │ ├── deployment.yaml │ └── service.yaml ├── .github/ │ └── workflows/ │ └── deploy.yaml └── README.md


---

## ✅ Features

- Full infrastructure provisioning with Terraform
- Secure secret storage with Azure Key Vault
- CI/CD with GitHub Actions:
  - Login to Azure
  - Set AKS context
  - Pull secret from Key Vault
  - Create K8s secret
  - Deploy Nginx app

---

## 🔐 Security

- No hardcoded credentials or secrets in the repo
- Secrets stored in **Azure Key Vault**
- GitHub Actions uses **Service Principal** with minimal required permissions
- Kubernetes secrets created dynamically in the pipeline

---

## 🚀 How to Use

```bash
terraform init
terraform apply -var-file="terraform.tfvars"
az aks get-credentials --resource-group <your-rg> --name <your-aks>
kubectl apply -f k8s/


Note: Secrets are auto-managed by GitHub Actions. Just push to master and the app gets deployed with injected secrets.

✨ Future Enhancements
 Add Helm support

 Integrate Prometheus + Grafana monitoring

 Multi-environment setup (dev/stage/prod)

 GitOps with ArgoCD or Flux

🙌 Author
Shahin Akbari
akbarishahin@gmail.com
📧 LinkedIn: https://www.linkedin.com/in/shahinakbari/
📦 GitHub Repo: https://github.com/shahinakbari/devops-aks-terraform

