# Terraform-vpc-Backend
Before Running this Module please configure your Backend. 
Following Example is using S3 :
```
terraform {
backend "s3" {
bucket = "Name_of_your_Bucket"
key = "Project_Name/us-east-1/ohio/dev/infrastructure.tfstate"
region = "us-east-1"
  }
}
```
## Following module will Create VPC :
```
module "vpc" {
  source                        = "vrodi18/vpc/aws"
  region                        = "${var.region}"
  vpc_cidr                      = "${var.vpc_cidr}"
  public_cidr1                  = "${var.public_cidr1}"
  public_cidr2                  = "${var.public_cidr2}"
  public_cidr3                  = "${var.public_cidr3}"
  private_cidr1                 = "${var.private_cidr1}"
  private_cidr2                 = "${var.private_cidr2}"
  private_cidr3                 = "${var.private_cidr3}"
  tags                          = "${var.tags}"
}
```
Declare Variables:
```
variable "region" {}
variable "vpc_cidr" {}
variable "public_cidr1" {}
variable "public_cidr2" {}
variable "public_cidr3" {}
variable "private_cidr1" {}
variable "private_cidr2" {}
variable "private_cidr3" {}
variable "tags" {
    type = "map"
}

variable "environment" {}
variable "s3_bucket" {}
variable "s3_folder_project" {}
variable "s3_folder_region" {}
variable "s3_folder_type" {}
variable "s3_tfstate_file" {}
```



