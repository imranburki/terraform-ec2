# variables.tf

variable "region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.medium"
}

variable "ssh_allowed_ip" {
  description = "The IP address allowed to access the EC2 instance via SSH"
  type        = string
}
