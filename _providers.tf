# Provider block to configure GCP Provider 
provider "google" {
  project = var.project_id
  # If another region/zone is specified in a resource configuration, that will take precedence.
  region  = var.resource_region
}

/*
To use the google-beta provider, simply set the provider field on each resource where you want to 
use google-beta. If the provider field is omitted, Terraform will implicitly use the google provider
by default even if you have only defined a google-beta provider block.
Terraform recommends that you set provider = google even though it is the default, for clarity.
*/

provider "google-beta" {
  project = var.project_id
  # If another region/zone is specified in a resource configuration, that will take precedence.
  region  = var.resource_region 
}