terraform {
  backend "s3" {
    bucket = "terraform-state-jan-2023"
    key    = "automate/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}


