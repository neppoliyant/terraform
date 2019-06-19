output "availability_zone" {
  value = "${data.aws_availability_zones.available.names}"
}

output "vpc_id" {
  value = "${data.aws_vpc.default.id}"
}

output "subnet_id" {
  value = "${data.aws_subnet_ids.Main.ids}"
}

output "computesubnet" {
  value = "${data.aws_subnet_ids.Compute.ids}"
}

output "security_group" {
  value = ["${data.aws_security_group.Main.id}"]
}

output "ebsenckey" {
  value = "${data.aws_kms_alias.ebs.arn}"
}

output "rhel7_ami_id" {
  value = "${data.aws_ami.latest_rhel7_ami.id}"
}