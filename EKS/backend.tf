terraform {
  backend "s3" {
    bucket = "cicd-terraform-eks-mkrela"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}