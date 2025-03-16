provider "aws" {
  region = var.region
}

# Call the security group module
module "ec2_security_group" {
  source         = "./security-group"
  ssh_allowed_ip = var.ssh_allowed_ip # Pass the variable to the module
}

# Call the EC2 instance module
module "ec2_instance" {
  source         = "./ec2-instance"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  security_group = module.ec2_security_group.security_group_id # Pass security group ID
}
output "ec2_public_ip" {
  value       = module.ec2_instance.public_ip
  description = "The public IP of the EC2 instance"
}
