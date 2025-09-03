variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "ec2_ami" {
  default = "ami-00ca32bbc84273381"  # Amazon Linux 2 ap-southeast-1
}

variable "key_name" {
  description = "Your existing EC2 key pair name"
  default     = "saw-keypair"

}
