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
