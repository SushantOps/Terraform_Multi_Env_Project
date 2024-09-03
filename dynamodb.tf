resource "aws_dynamodb_table" "my-app-table" {
  name = "${var.my_enviroment}-test-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"
  attribute {
    name = "id"
    type = "S"
  }
}