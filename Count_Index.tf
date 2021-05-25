/*resource "aws_iam_user" "User" {
    name=var.Users[count.index]
    path = "/system/"
    count = 4
  
}

variable "Users" {
    type = list
    default = ["devUser","QAUser","StageUser","ProdUser"]
  
}*/