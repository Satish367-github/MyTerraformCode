/*resource "aws_instance" "DEV_Instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = "t2.micro"
    count= var.flag==true?1:0
    tags = {
        Name="DEV"
    }
}

resource "aws_instance" "PROD_Instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = "t2.medium"
    count= var.flag!=true?1:0
    tags = {
        Name="PROD"
    }
}

variable "flag" {
  
}
*/