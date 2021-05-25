resource "aws_instance" "First_Instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = lookup(var.Instance, terraform.workspace)
  
}

variable "Instance" {
  type = "map"


default = {
    default="t2.micro"
    dev="t2.large"
    stage="t2.medium"
}
}