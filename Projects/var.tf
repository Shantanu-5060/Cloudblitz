variable "name" {
    default = "India"
}

variable "all_traffic" {
    default = "0.0.0.0/0"
}
variable "image" {
    default = "ami-07faa35bbd2230d90"
}

variable "key" {
    default = "tokey"
}

variable "environment" {}
variable "vpc_cidr" {}
variable "pri_subnet_cidr" {}
variable "pub_subnet_cidr" {}
variable "type" {}


