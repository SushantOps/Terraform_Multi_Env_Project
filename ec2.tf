# Creating Key aws_key_pair
resource "aws_key_pair" "deployer" {
  key_name = "terra-ayto-key"
  public_key = file("terra-key.pub")
}


# Default Vpc

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my-sg" {
  name        = "allow ports"
  description = "Allow users to connect"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description = "Allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "My-security-group"
  }

}

resource "aws_instance" "testinstance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.my-sg.name]

  tags = {
    Name = "Terrafrom-Instnace"
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp3"
  }
}