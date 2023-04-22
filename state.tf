terraform {
  backend "s3" {
    bucket = "terraform-dvp"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}
