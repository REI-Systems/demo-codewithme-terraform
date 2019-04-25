variable "ami" {
  default = "ami-006219aba10688d0b"
}

variable "key_name" {
  description = "SSH Key used for the servers."
}

variable "subnet_id" {
  description = "Subnet ID information for the Web servers."
}

variable "vpc_id" {
  description = "VPC ID information for TF servers."
}

variable "private_key" {
  description = "Private SSH Key used to access servers."
}
