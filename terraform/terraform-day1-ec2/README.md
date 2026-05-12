# Terraform Day 1 - EC2 Nginx Deployment

## Overview

This project demonstrates how to deploy an AWS EC2 instance using Terraform.

The deployment included:

- EC2 Instance
- Security Group
- Nginx Installation
- User Data Automation
- Terraform Outputs
- Infrastructure Cleanup

---

## Technologies Used

- Terraform
- AWS EC2
- AWS Security Groups
- Amazon Linux
- Nginx
- Bash Scripting

---

## Commands Used

### Initialize Terraform

```bash
terraform init
````

### Validate Configuration

```bash
terraform validate
```

### Preview Infrastructure

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

## Screenshots

### Terraform Init

![Terraform Init](screenshots/terraform-init.png)

### Terraform Validate

![Terraform Validate](screenshots/terraform-validate.png)

### Terraform Plan

![Terraform Plan](screenshots/terraform-plan-1.png)

![Terraform Plan](screenshots/terraform-plan-2.png)

![Terraform Plan](screenshots/terraform-plan-3.png)

### Terraform Apply

![Terraform Apply](screenshots/terraform-apply.png)

### Successful Deployment

![Terraform Success](screenshots/Terraform-day-1-success.png)

### AWS EC2 Instance

![EC2 Instance](screenshots/EC2-instance.png)

### Terraform Destroy

![Terraform Destroy](screenshots/terraform-destroy.png)

---

## What I Learned

* How Infrastructure as Code works
* How Terraform provisions AWS resources
* How Security Groups manage traffic
* How user_data automates server configuration
* How to safely destroy infrastructure to avoid AWS charges
