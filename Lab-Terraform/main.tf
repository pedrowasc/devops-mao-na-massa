provider "aws" {
 region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucker" {
  bucket = "devops-mao-na-massa-pedro"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "terraform"
  }
}

