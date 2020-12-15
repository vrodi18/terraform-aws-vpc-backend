environment = "stage"
s3_bucket = "terraform-iaac-2020-vladlen" #Will be used to set backend.tf
s3_folder_project = "Project_Name" #Will be used to set backend.tf
s3_folder_region = "us-east-1" #Will be used to set backend.tf
s3_folder_type = "oregon" #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf


region = "us-west-2"
vpc_cidr = "192.168.0.0/16"
public_cidr_block1 = "192.168.1.0/24"
public_cidr_block2 = "192.168.2.0/24"
public_cidr_block3 = "192.168.3.0/24"
private_cidr_block1 = "192.168.101.0/24"
private_cidr_block2 = "192.168.102.0/24"
private_cidr_block3 = "192.168.103.0/24"
tags    =   {
    Name                    =   "VPC_Project"
    Environment             =   "Stage"
    Team                    =   "DevOps"
    Created_by              =   "Vladlen"
    Department              =   "IT"
    Bill                    =   "CFO"
}