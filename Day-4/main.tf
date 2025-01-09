provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-003f5a76758516d1e" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "sailu-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
