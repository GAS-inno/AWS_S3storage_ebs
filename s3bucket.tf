resource "aws_s3_bucket" "saw_bucket" {
  bucket = "saw-tf-s3bucket" # Change to a globally unique name
  #acl    = "private"

  tags = {
    Name        = "saw-tf-bucket"
    
  }
}

