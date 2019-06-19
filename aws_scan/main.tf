terraform {
  required_version = ">= 0.11.7"
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
  id = "${var.vpc_id}"
}

data "aws_ami" "latest_rhel7_ami" {
  owners = ["${var.owner_id}"]
  filter {
    name   = "name"
    values = ["${var.ami_name}"]
  }
}

data "aws_subnet_ids" "Main" {
  vpc_id = "${data.aws_vpc.default.id}"
}

data "aws_subnet_ids" "Compute" {
  vpc_id = "${data.aws_vpc.default.id}"
  tags {
    "INFRA:usage" = "compute"
  }
}

data "aws_security_group" "Main" {
  vpc_id = "${data.aws_vpc.default.id}"
  filter {
    name = "group-name"
    values = ["default"]
  }
}


data "aws_kms_alias" "ebs" {
  name = "${var.kms_alias_name}"
}