/*resource "aws_security_group" "SG" {
  name = "ProvisionerSG"
  ingress {
      from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}
resource "aws_instance" "First_Instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = "t2.micro"
    key_name = "Terraform"
    vpc_security_group_ids = [aws_security_group.SG.id]
    tags = {
        Name="First"
    }

provisioner "remote-exec" {
    on_failure = fail
    inline = [
        "sudo yum -y install nano"
    ]

}

connection {
  type="ssh"
  user = "ec2-user"
  private_key=file("./Terraform.pem")
  host=self.public_ip
}
}

*/
    