terraform {
  backend "s3" {
    bucket = "831981619011-terraform-vars"
    key    = "l2-rollup/terraform.tfstate"
    region = "eu-north-1"
  }
}