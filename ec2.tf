resource "aws_instance" "saw_resource" {
  ami                         = var.ec2_ami  # dynamic AMI
  instance_type               = var.ec2_instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.saw_sg.id]  # 👈 use ID, not name
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "saw-ec2-instance"
  }
}

