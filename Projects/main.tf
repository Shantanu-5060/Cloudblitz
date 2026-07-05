provider "aws" {
  region = "ap-northeast-1"
}

module "vpc_module" {
  source = "./Modules/VPC"
  name = var.name
  env = var.environment
  vpc_cidr = var.vpc_cidr
  pri_subnet_cidr = var.pri_subnet_cidr
  pub_subnet_cidr = var.pub_subnet_cidr
  all_traffic = var.all_traffic

}

module "ec2_module" {
  source = "./Modules/EC2"
  name = var.name
  env = var.environment
  image = var.image
  type = var.type
  key = var.key
  public_subnet = module.vpc_module.public_subnet_id
  
}

terraform {
  backend "s3" {
    bucket = "96175-bucket"
    region = "ap-northeast-1"
    key = "Backup/terraform.tfstate"
  }
        
}