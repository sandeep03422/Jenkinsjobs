# main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
 ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"
  key_name      = "Devops"  # Change to your key pair name

  tags = {
    Name = "example-instance"
  }
}
