/*
variable "Ports" {
  type    = list(number)
  default = ["2020", "2021", "2022", "2023"]

}

resource "aws_security_group" "Sg" {
  name = "DynamicSg"

  dynamic "ingress" {
    for_each = var.Ports
    iterator = ingressport
    content {
      from_port   = ingressport.value
      to_port     = ingressport.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.Ports
    iterator = egressport
    content {
      from_port   = egressport.value
      to_port     = egressport.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
*/