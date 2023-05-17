terraform {
  backend "s3" {
    bucket = "app-tf-st-bckt"
    key    = "awscicd.tfstate"
    region = "us-west-1"
    # profile = "terraform"
  }
}