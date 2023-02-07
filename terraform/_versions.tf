# Terraform block to configure Terraform and Provider Version
terraform {
  required_version = ">= 1.3.6"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.52.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}
