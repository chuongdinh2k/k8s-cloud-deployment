variable "az_a" {
  description = "The availability zone for the subnet"
  default     = "ap-southeast-1a"
}

variable "vpc-name" {
  description = "The name of the VPC"
  default     = "jenkins-vpc"

}
variable "igw-name" {}
variable "rt-name" {}
variable "subnet-name" {}
variable "sg-name" {}
variable "instance-name" {}
variable "key-name" {}
variable "iam-role" {}
variable "region" {
  description = "The AWS region"
  default     = "ap-southeast-1"
}
