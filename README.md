# 🚀 AWS EC2 Instance Deployment with Terraform

This Terraform project automates the deployment of an AWS EC2 instance with a security group that allows **SSH (port 22)** and **HTTP (port 80)** traffic. It follows best practices with modular code structure, variable abstraction, and configurable IP-based access for secure SSH connections.

---

## 📁 Project Structure

```bash
.
├── main.tf                  # Root Terraform configuration
├── variables.tf             # Input variables (to be created)
├── outputs.tf               # Output definitions (to be created)
├── ec2-instance/            # Module to launch EC2 instance
│   └── main.tf
├── security-group/          # Module to create a security group
│   └── main.tf
└── README.md                # Project documentation
