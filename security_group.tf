# Security Group (empty shell, rules are managed separately)
resource "aws_security_group" "saw_sg" {
  name        = "saw-sg"
  description = "Security group for SSH and HTTP"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "saw-sg"
  }
}

# Ingress Rule: Allow SSH (22)
resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.saw_sg.id
  description       = "Allow SSH"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

# Ingress Rule: Allow HTTP (80)
resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.saw_sg.id
  description       = "Allow HTTP"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

# Egress Rule: Allow all outbound
resource "aws_vpc_security_group_egress_rule" "all_outbound" {
  security_group_id = aws_security_group.saw_sg.id
  description       = "Allow all outbound"
  ip_protocol       = "-1"       # all protocols
  cidr_ipv4         = "0.0.0.0/0"
}
