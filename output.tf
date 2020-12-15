output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "private_subnet1" {
  value = "${module.vpc.private_subnet1}"
}

output "private_subnet2" {
  value = "${module.vpc.private_subnet2}"
}

output "private_subnet3" {
  value = "${module.vpc.private_subnet3}"
}

output "public_subnet1" {
  value = "${module.vpc.public_subnet1}"
}

output "public_subnet2" {
  value = "${module.vpc.public_subnet2}"
}

output "public_subnet3" {
  value = "${module.vpc.public_subnet3}"
}

output "region" {
  value = "${module.vpc.region}"
}
