provider "aws" {
  region = var.aws_region
}

#Criação do bucket

resource "aws_s3_bucket" "my-test-bucker" {
  bucket = "devops-mao-na-massa-pedro"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "terraform"
    Owner       = "Pedro"
  }
}

#Criacao da AMI personalizada EC2

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}