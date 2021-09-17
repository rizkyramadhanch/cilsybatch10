terraform {
  required_providers {
    kops = {
      source = "eddycharly/kops"
      version = "1.21.0-alpha.4"
    }
  }
}

provider "kops" {
  # Configuration options
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "cilsy"
}

terraform {
  backend "s3" {
    bucket = "cilsy-terraform-state-rizkyramadhan"
    key    = "path/to/my/key"
    region = "ap-southeast-1"
    profile = "cilsy"
  }
}