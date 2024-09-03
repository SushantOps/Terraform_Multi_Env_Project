resource "aws_s3_bucket" "my-bucket" {

  bucket = "${var.my_enviroment}-multi-region-s3-1717"

  tags = {
    Name = "${var.my_enviroment}-multi-region-s3-1717"
  }
}