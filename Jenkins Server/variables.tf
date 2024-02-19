variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}
variable "public_subnets" {
  description = "Subnet CIDR"
  type        = list(string)
}

variable "instance_type" {
  description = "Type of my EC2 Instance"
  type        = string

}