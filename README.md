# Terraform AKS DevOps Project

This is a real-world DevOps project using **Terraform**, **Azure AKS**, and **Kubernetes**.

## 🔧 Tools Used
- Terraform
- Azure CLI
- Azure Kubernetes Service (AKS)
- Kubernetes (kubectl)
- GitHub

## 📦 Project Structure
terraform-aks-devops/ ├── main.tf ├── variables.tf ├── outputs.tf ├── terraform.tfvars ├── provider.tf ├── modules/ │ └── aks/ ├── k8s/ │ ├── deployment.yaml │ └── service.yaml └── README.md


## ✅ What This Project Does
- Creates Azure Resource Group and AKS cluster with Terraform
- Deploys a simple Nginx app to AKS
- Exposes it with a LoadBalancer

## 🚀 How to Run
1. `terraform init`
2. `terraform apply -var-file="terraform.tfvars"`
3. `az aks get-credentials`
4. `kubectl apply -f k8s/`
5. Access Nginx via public IP

---

### 🧠 Optional (Enhancements)
- Add GitHub Actions for CI/CD
- Add Azure Monitor or Prometheus for monitoring
- Use Key Vault for secrets

---

## ☁️ Screenshot
![AKS Dashboard](https://via.placeholder.com/800x400?text=Add+your+own+screenshot+here)

---
Created with ❤️ by Shahin Akbari
