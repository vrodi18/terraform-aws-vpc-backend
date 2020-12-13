# Terraform-vpc-Backend
## Before Running this Module please configure your Backend. 
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
(path to VPC config files : https://github.com/vrodi18/terraform-aws-vpc)
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
## Declare Variables:
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
## Outputs:
```
output "vpc" {
  value = "${module.vpc.vpc}"
}
output "private_subnet1" {
  value = "${module.vpc.private_subnets[0]}"
}
output "private_subnet2" {
  value = "${module.vpc.private_subnets[1]}"
}
output "private_subnet3" {
  value = "${module.vpc.private_subnets[2]}"
}
output "public_subnet1" {
  value = "${module.vpc.public_subnets[0]}"
}
output "public_subnet2" {
  value = "${module.vpc.public_subnets[1]}"
}
output "public_subnet3" {
  value = "${module.vpc.public_subnets[2]}"
}
output "region" {
  value = "${module.vpc.region}"
}
```
#### Included Script will help you to  switch between Backends.

## To start Bulding VPC for Prod Department in VA run following commands:
```
source setenv.sh -var-file configurations/dev/virginia.tfvars
terraform plan -var-file  configurations/dev/virginia.tfvars
terraform apply -var-file  configurations/dev/virginia.tfvars
```


