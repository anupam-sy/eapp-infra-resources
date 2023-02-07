# Locals block to hold and modify the values
locals {
  tf_sa = var.terraform_service_account
}

# Provider block to configure GCP Provider credential configuration
provider "google" {
  // The service account to impersonate for all Google API Calls.
  // # Make sure to give "roles/iam.serviceAccountTokenCreator" role to an identity 
  // (who will trigger the terraform code) on this service account for the impersonation to succeed.

  impersonate_service_account = local.tf_sa
}

# Provider block to configure GCP Provider credential configuration
provider "google-beta" {
  // The service account to impersonate for all Google API Calls.
  impersonate_service_account = local.tf_sa
}
