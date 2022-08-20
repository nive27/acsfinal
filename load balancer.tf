resource "aws_lb" "load_balancer" {
    name = "ALB"
    load_balancer_type = "application"
    
    subnet_mapping {
        subnet_id = aws_subnet.public1.id
        private_ipv4_address = ""
    }
    
      tags = {
        Environment = "DEV"
    }
    
    subnet mapping {
        subnet_id = aws_subnet.public2.id
        private_ipv4_address = ""
    }
    
      tags = {
        Environment = "STAGING"
    }
    
    subnet_mapping {
        subnet_id = aws_subnet.public3.id
        private_ipv4_address = ""
    }
    
      tags = {
        Environment = "PROD"
    }
}


resource "aws_lb_target_group" "alb" {
    name = "targetgroupacs"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.main.id
}


resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.alb.arn
  target_id = aws_instance.ec2.id
  port = 80
}


resource "aws_lb_listener" "acslistener" {
  load_balancer_arn = aws_lb.load_balancer.arn
  port = "443"
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"
  
  default action {
    type = "forward"
    target_group_arn = aws_lb_target_group.alb.arn
  }
}
