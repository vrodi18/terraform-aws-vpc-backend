terraform {
backend "s3" {
bucket = "terraform-iaac-2020-vladlen"
key = "Project_Name/us-east-1/virginia/dev/infrastructure.tfstate"
region = "us-east-1"
  }
}
