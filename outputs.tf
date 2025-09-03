output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private_a.id
}

output "security_group_id" {
  value = aws_security_group.saw_sg.id
}

output "ec2_instance_id" {
  value = aws_instance.saw_resource.id
}

output "ec2_public_ip" {
  value = aws_instance.saw_resource.public_ip
}


#-------- S3
output "name" {
  value = aws_s3_bucket.saw_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.saw_bucket.arn
}

output "bucket_url" {
  value = "https://${aws_s3_bucket.saw_bucket.bucket}.s3.${var.region}.amazonaws.com/"
}