resource "aws_s3_bucket" "my_app_bucke" {
  bucket = "${var.my_env}-test-demo1717-app-bucekt"

  tags = {
    Name = "${var.my_env}-test-demo1717-app-bucekt"
  }
}