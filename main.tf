terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}


resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "tf_key" {
  key_name   = var.key_pair_name
  public_key = tls_private_key.rsa.public_key_openssh
}


resource "local_file" "tf_key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = var.key_file_name

}

resource "aws_security_group" "security" {
  name = "allow-all"

  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}                                                                                    

resource "aws_instance" "vz_demo_server" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    key_name = aws_key_pair.tf_key.key_name
    security_groups = [ "${aws_security_group.security.name}" ]

    tags = {
        Name = "vz-demo"
    }
}