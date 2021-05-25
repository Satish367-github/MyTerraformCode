/*
resource "aws_instance" "First_Instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = "t2.micro"
    key_name = "Terraform"
    tags = {
        Name="First"
    }
  


provisioner "remote-exec" {
    inline =[
        "sudo amazon-linux-extras install -y nginx1.12",
       "sudo systemctl start nginx"
    ]
    connection {
        type="ssh"
        user = "ec2-user"
        private_key = file("./Terraform.pem")
        host=self.public_ip
    }
}
}
*/