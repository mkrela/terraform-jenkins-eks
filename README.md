Amazon EKS Cluster Deployment with Terraform and Jenkins
Overview
This repository provides Terraform infrastructure as code (IaC) and Jenkins pipeline scripts to automate the deployment of an Amazon Elastic Kubernetes Service (EKS) cluster on AWS. Amazon EKS is a managed Kubernetes service that makes it easy to deploy, manage, and scale containerized applications using Kubernetes.

<b>Components</b>

<b>Terraform</b>
Infrastructure as Code: The Terraform code in this repository defines the AWS resources required to create an EKS cluster, including VPC, subnets, IAM roles, security groups, and the EKS cluster itself.

Modular Configuration: The Terraform configuration is modular and allows customization of parameters such as region, instance types, cluster name, and other cluster settings.

<b>Jenkins</b>
Continuous Integration/Continuous Deployment (CI/CD): Jenkins is used to automate the deployment process through a pipeline script. The pipeline script defines stages for provisioning AWS resources with Terraform, updating kubeconfig, and verifying the cluster deployment.

Pipeline as Code: The Jenkins pipeline script is written in Groovy and is version-controlled alongside the Terraform code. It defines the steps required to execute Terraform commands and manage the deployment process.

<b>Deployment Process</b>
Configuration: Customize the Terraform configuration variables according to your requirements, such as AWS region, instance types, cluster name, and other parameters.

**Infrastructure Provisioning**: Execute the Terraform code to provision the necessary AWS resources for the EKS cluster. Terraform will create VPC, subnets, IAM roles, security groups, and the EKS cluster.

Kubeconfig Setup: Retrieve the kubeconfig file for the newly created EKS cluster using the aws eks update-kubeconfig command. This allows Kubernetes tools to communicate with the cluster.

Jenkins Pipeline: Configure Jenkins with necessary credentials to access AWS and execute Terraform scripts. Create a Jenkins pipeline job and define the pipeline script to execute the Terraform commands for provisioning the EKS cluster.

Pipeline Execution: Trigger the Jenkins pipeline job to initiate the deployment process. Jenkins will execute the pipeline script, which includes Terraform commands to provision AWS resources and manage the EKS cluster deployment.

Verification: After the deployment completes, verify the successful creation of the EKS cluster by checking the status of AWS resources and accessing the Kubernetes cluster using kubectl commands.

Cleanup
Resource Cleanup: To clean up the resources created by Terraform, execute the terraform destroy command. This will delete all AWS resources provisioned by Terraform, including the EKS cluster.
Conclusion
By leveraging Terraform and Jenkins, you can automate the deployment of Amazon EKS clusters on AWS, streamlining the infrastructure provisioning process and enabling continuous integration and deployment of Kubernetes-based applications.
