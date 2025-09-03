# Create a 1 GB EBS volume in the same AZ as the subnet
resource "aws_ebs_volume" "saw_ebs_volume" {
  availability_zone = aws_subnet.public.availability_zone
  size              = 1

  tags = {
    Name = "saw-ebs-volume"
  }
}

# Attach the EBS volume to the EC2 instance
resource "aws_volume_attachment" "saw_resource" {
  device_name = "/dev/sdh" # shows up as /dev/xvdh in Linux
  volume_id   = aws_ebs_volume.saw_ebs_volume.id
  instance_id = aws_instance.saw_resource.id
}