data "terraform_remote_state" "main" {
  backend = "s3"
  config = {
    bucket = "terraform-iaac-2020-vladlen"
    key = "Project_Name/us-east-1/virginia/dev/infrastructure.tfstate"
    region = "us-east-1"
  }
}

output "full_list" {
  value = data.terraform_remote_state.main.outputs.*
}