terraform {
backend "s3" {
 encrypt = true
 bucket = "test-task-terraform-state"
 dynamodb_table = "test-terraform-state-lock"
 region = "us-east-1"
 key = "terraform.tfstate"
 }
}
