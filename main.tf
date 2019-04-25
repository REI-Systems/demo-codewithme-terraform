# Configure the AWS Provider
provider "aws" {
  region = "${var.region}"
}

module "web" {
  source = "modules/web"
  key_name = "${var.key_name}"
  subnet_id = "${aws_subnet.tf-web.id}"
  vpc_id = "${aws_vpc.tf-vpc.id}"
  private_key = "${var.private_key}"
}

module "db" {
  source = "modules/db"

  key_name = "${var.key_name}"
  subnet_id = "${aws_subnet.tf-db.id}"
  vpc_id = "${aws_vpc.tf-vpc.id}"
  sg_tf_web = "${module.web.sg_tf_web}"
}

output "Web Server Public IP" {
  value = "${module.web.public_ip}"
}

output "MySQL DB Private IP" {
  value = "${module.db.private_ip}"
}

output "SSH Key" {
  value = "${var.private_key}"
}
