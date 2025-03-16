# ec2-instance/main.tf

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group]  # Correct reference
  
  tags = {
    Name = "Terraform-EC2-Instance"
  }
}

