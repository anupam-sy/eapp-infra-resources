# Terraform block to configure Terraform and Provider Version
terraform {
  required_version = "~> 1.0.0" # To allow upgrade of 1.0.x versions.

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.60.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 3.60.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
}