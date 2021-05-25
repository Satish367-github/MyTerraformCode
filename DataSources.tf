/*data "aws_ami" "GetAmi" {
    most_recent      = true
    owners           = ["amazon"]

    filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
  
}

resource "aws_instance" "Instance" {
    ami = data.aws_ami.GetAmi.id
    instance_type = "t2.micro"

    tags = {
        
      "Name" = "DataInstance"
    }
  
}
*/