terraform {
  backend "s3" {
    bucket = "actionhippie-terraform"
    key    = "github"
    region = "eu-central-1"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.2.0"
    }
  }

  required_version = ">= 1.0"
}

provider "github" {
  owner = "actionhippie"
}
