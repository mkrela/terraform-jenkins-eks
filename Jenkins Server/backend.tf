terraform {
  backend "s3" {
    bucket = "cicd-terraform-eks-mkrela"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}