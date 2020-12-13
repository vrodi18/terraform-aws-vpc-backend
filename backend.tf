terraform {
backend "s3" {
bucket = "terraform-iaac-2020-vladlen"
key = "class/us-east-1/ohio/dev/infrastructure.tfstate"
region = "us-east-1"
  }
}
