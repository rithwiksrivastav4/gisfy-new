terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
       null = {
      source  = "hashicorp/null" # or your chosen namespace
      version = "~> 3.1"         # Replace with a suitable version constraint
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket         = "myterraform"
    key            = "terraform/state.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "myterra"
  }
}

