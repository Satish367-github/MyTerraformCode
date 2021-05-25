resource "aws_instance" "First_Instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = var.Instancetype
  
}