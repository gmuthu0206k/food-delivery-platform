terraform {
  backend "s3" {
    bucket         = "mutharasan-com-terraform-state"
    key            = "dev/vpc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "food-delivery-terraform-lock"
    encrypt        = true
  }
}
