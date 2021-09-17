variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnets_cidr" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"]
}

variable "webservers_ami" {
  default = "ami-0747bdcabd34c712a"
}

variable "instance_type" {
  default = "t2.micro"
}
