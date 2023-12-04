# main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-01b3482ea9e568d65"  # Change to your desired AMI
  instance_type = "t2.micro"
  key_name      = "Devops"  # Change to your key pair name

  tags = {
    Name = "example-instance"
  }
}
