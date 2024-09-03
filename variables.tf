variable "aws_region" {
  description = "Aws region where resources will be created"
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default = "ami-0e86e20dae9224db8"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default = "t2.micro"
}

variable "my_enviroment" {
  description = "value"
  default = "dev"
}