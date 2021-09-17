resource "aws_lb" "cilsy-alb" {
  name               = "cilsy-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.webservers.id]
  subnets            = aws_subnet.public.*.id

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}

resource "aws_lb_target_group_attachment" "webserver" {
  target_group_arn = aws_lb_target_group.webserver.arn
  count            = length(var.subnets_cidr)
  target_id        = element(aws_instance.webservers.*.id, count.index)
  port             = 80
}

resource "aws_lb_target_group" "webserver" {
  name     = "webserver"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Cilsy-VPC.id

}

resource "aws_lb_listener" "webserver" {
  load_balancer_arn = aws_lb.cilsy-alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.webserver.arn
  }
}
