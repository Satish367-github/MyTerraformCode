/*resource "aws_elb" "bar" {
  name               =var.LBname
  availability_zones = var.AZ

  listener {
    instance_port     = var.instancePort
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }


  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "foobar-terraform-elb"
  }
}


resource "aws_instance" "Varinstance" {
    ami = var.AMI[2]
    instance_type = var.Mappings["low"]
  
}
*/