# Terraform Infrastructure as Code Lab

## Overview

This repository contains the implementation of multiple assignments demonstrating Infrastructure as Code (IaC) concepts using Terraform.
The lab focuses on provisioning local infrastructure resources, managing containers, modular configuration design, automation using CI workflows, and dynamic infrastructure creation.

## Tools Used

* Terraform CLI
* Docker
* Git
* GitHub Actions
* Visual Studio Code
* Ubuntu Linux

## Repository Structure

```
terraform-lab
│
├── day1   → Introduction to Terraform and basic resource creation  
├── day2   → Using variables and environment-based configurations  
├── day3   → Managing Docker containers using Terraform  
├── day4   → Modular infrastructure using Terraform modules  
├── day5   → CI automation and validation workflow  
└── day5-dynamic → Dynamic container provisioning using loops (Bonus)
```

## Assignment Summary

### Day 1 – Terraform Basics

* Installed Terraform
* Created a local file resource using Terraform
* Used variables and output values
* Executed Terraform workflow (init, plan, apply)

### Day 2 – Variables and Multiple Configurations

* Parameterized infrastructure using input variables
* Created separate tfvars files for development and production
* Applied configurations using environment-specific values

### Day 3 – Container Management

* Configured Docker provider
* Pulled nginx image
* Provisioned Docker container with port mapping
* Accessed service through browser

### Day 4 – Terraform Modules

* Created reusable nginx container module
* Deployed multiple containers using module instances
* Demonstrated modular infrastructure design

### Day 5 – Automation and Validation

* Implemented GitHub Actions CI workflow
* Automated Terraform formatting check, validation, and plan execution
* Ensured infrastructure code quality

### Bonus – Dynamic Infrastructure Creation

* Used Terraform expressions and for_each loop
* Dynamically created multiple nginx containers from configuration list
* Generated output containing all service URLs

## Learning Outcomes

* Understanding Terraform workflow
* Managing infrastructure using configuration files
* Using variables and reusable modules
* Provisioning containerized services
* Automating infrastructure validation with CI
* Implementing scalable dynamic infrastructure

## Author

Name: J Veni Chathurya
Course: Software Lab
Topic: Infrastructure as Code using Terraform
