locals {
  bucket-name = "${var.layer}-${var.env}"
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "demo" {
    # bucket = "web-dev-bucket"
    # bucket = "${var.layer}-${var.env}-bucket-hyd"
    bucket = local.bucket-name
    tags = {
        # Name = "${var.layer}-${var.env}-bucket-hyd"
        Name = local.bucket-name
        Environment = var.env
    }
    
 
  
}