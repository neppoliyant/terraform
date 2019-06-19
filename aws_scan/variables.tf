variable "vpc_id" {
  description = "Default VPC Id"
  default = "vpc-33db6349"
}

variable "owner_id" {
  description = "Owner Id"
  default = "309956199498"
}

variable "ami_name" {
  description = "AMI Name"
  default = "RHEL-8.0.0_HVM-20190426-x86_64-1-Hourly2-GP2"
}

variable "kms_alias_name" {
  description = "KMS Alias name"
  default = "alias/EBS-Volume"
}

