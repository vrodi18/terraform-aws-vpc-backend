environment = "qa"
s3_bucket = "terraform-iaac-2020-vladlen" #Will be used to set backend.tf
s3_folder_project = "Project_Name" #Will be used to set backend.tf
s3_folder_region = "us-east-1" #Will be used to set backend.tf
s3_folder_type = "ohio" #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf

region = "us-east-2"
vpc_cidr = "172.16.0.0/16"
public_cidr_block1 = "172.16.1.0/24"
public_cidr_block2 = "172.16.2.0/24"
public_cidr_block3 = "172.16.3.0/24"
private_cidr_block1 = "172.16.101.0/24"
private_cidr_block2 = "172.16.102.0/24"
private_cidr_block3 = "172.16.103.0/24"
tags    =   {
    Name                    =   "VPC_Project"
    Environment             =   "Dev"
    Team                    =   "DevOps"
    Created_by              =   "Vladlen"
    Department              =   "IT"
    Bill                    =   "CFO"
}