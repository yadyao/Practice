terraform {
  required_version = "~> 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  # backend "s3" {
  # bucket = "bootcamp32-85-mary"
  # key    = "ec2/terraform.tfstate"
  # region = "us-west-2"

  #}

}

provider "aws" {
  region = var.region[1]
}

variable "region" {
  type    = list(string)
  default = ["us-west-1", "us-west-2", "us-east-1"]
}