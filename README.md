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

## ✅ Features

- Deploys a single EC2 instance using a reusable module.
- Creates a security group that:
  - Allows HTTP traffic from anywhere (`0.0.0.0/0`).
  - Allows SSH access **only from your IP** (not open to all).
- Uses variables for AMI ID, instance type, region, and allowed IPs.
- Outputs the public IP of the deployed EC2 instance.

