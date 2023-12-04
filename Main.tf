# main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Change to your desired AMI
  instance_type = "t2.micro"
  key_name      = "your-key-pair-name"  # Change to your key pair name

  tags = {
    Name = "example-instance"
  }
}
