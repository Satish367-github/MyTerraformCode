/*
provider "aws" {
    access_key = "AKIA3OH2SKDUYLIGURX7"
    secret_key = "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"
    region = "ap-south-1"
}

resource "aws_instance" "First_Instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = "t2.micro"
    tags = {
        Name="First"
    }
  
}
resource "aws_eip" "EIP_EC2" {
    instance = aws_instance.First_Instance.id
    vpc = true
  
}

resource "aws_instance" "Second_Instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = "t2.micro"
    tags = {
        Name="Second"
    }
}

resource "aws_eip" "EIP_Associate" {
    
    vpc = true
  
}

resource "aws_eip_association" "Ec2EIP" {
  instance_id = aws_instance.Second_Instance.id
  allocation_id = aws_eip.EIP_Associate.id
}

resource "aws_security_group" "SG" {
    name = "EIPSG"
    ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.EIP_Associate.public_ip}/32"]
  }
    }
    
  */
