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
  source              = "vrodi18/vpc/aws"
  region              = "${var.region}"
  vpc_cidr            = "${var.vpc_cidr}"
  private_cidr_block1 = "${var.private_cidr_block1}"
  private_cidr_block2 = "${var.private_cidr_block2}"
  private_cidr_block3 = "${var.private_cidr_block3}"
  public_cidr_block1  = "${var.public_cidr_block1}"
  public_cidr_block2  = "${var.public_cidr_block2}"
  public_cidr_block3  = "${var.public_cidr_block3}"
  tags                = "${var.tags}"
}
```
## Declare Variables:
```

variable "tags" {
    type = "map"
}

variable "vpc_cidr" {}
variable "region" {}
variable "private_cidr_block1" {}
variable "private_cidr_block2" {}
variable "private_cidr_block3" {}
variable "public_cidr_block1" {}
variable "public_cidr_block2" {}
variable "public_cidr_block3" {}

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
## Structure of .tfvars files in configrations folder:
```
├─ configurations
    ├── dev
    │   ├── ohio.tfvars
    │   ├── oregon.tfvars
    │   └── virginia.tfvars
    ├── prod
    │   ├── ohio.tfvars
    │   ├── oregon.tfvars
    │   └── virginia.tfvars
    ├── qa
    │   ├── ohio.tfvars
    │   ├── oregon.tfvars
    │   └── virginia.tfvars
    └── stage
        ├── ohio.tfvars
        ├── oregon.tfvars
        └── virginia.tfvars
```
## Example of .tfvars file for VA region:
```
environment = "dev"
s3_bucket = "terraform-iaac-2020-vladlen" #Will be used to set backend.tf
s3_folder_project = "Project_Name" #Will be used to set backend.tf
s3_folder_region = "us-east-1" #Will be used to set backend.tf
s3_folder_type = "virginia" #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf


region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
private_cidr_block1 = "10.0.101.0/24"
private_cidr_block2 = "10.0.102.0/24"
private_cidr_block3 = "10.0.103.0/24"
public_cidr_block1 = "10.0.1.0/24"
public_cidr_block2 = "10.0.2.0/24"
public_cidr_block3 = "10.0.3.0/24"

tags    =   {
    Name                    =   "VPC_Project"
    Environment             =   "Dev"
    Team                    =   "DevOps"
    Created_by              =   "Vladlen"
    Department              =   "IT"
    Bill                    =   "CFO"
}

```
#### Included Script will help you to  switch between Backends.

## To start Bulding VPC for Prod Department in VA run following commands:
```
source setenv.sh  configurations/dev/virginia.tfvars
terraform plan -var-file  configurations/dev/virginia.tfvars
terraform apply -var-file  configurations/dev/virginia.tfvars
```


