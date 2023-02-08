/*
1. serviceusage.googleapis.com | To enable apis/services that service consumers want to use on Google Cloud Platform, 
lists the available or enabled services, or disables services that service consumers no longer use.
2. cloudresourcemanager.googleapis.com | To create, read, and update metadata for Google Cloud Platform resources.
3. servicenetworking.googleapis.com | The Service Networking API provides automatic management of network configurations 
necessary for certain services. Like this must be enabled if you want to setup private service access for your cloud SQL instance. 
[In general private services access is implemented as a VPC peering connection between your VPC network and the Google 
services VPC network where your Cloud SQL instance resides.]
4. cloudbilling.googleapis.com | To manage billing for Google Cloud Platform projects programmatically.
5. iam.googleapis.com | To manage identity and access control for Google Cloud Platform resources, including the creation of 
service accounts.
6. admin.googleapis.com | To view and manage google workspace account resources like users and groups by administrators.
7. storage-api.googleapis.com | Lets you store and retrieve potentially-large, immutable data objects.
8. compute.googleapis.com | To deploy and manage compute resources.
9. logging.googleapis.com | Writes log entries and manages your Cloud Logging configuration.
10. monitoring.googleapis.com | To get metrics for monitoring of google cloud resources.
*/

# locals block to define required service APIs
locals {
  googleapis = [
    "serviceusage.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "servicenetworking.googleapis.com",
    "cloudbilling.googleapis.com",
    "iam.googleapis.com",
    "admin.googleapis.com",
    "storage-api.googleapis.com",
    "compute.googleapis.com"
  ]
}

# resource block to enable required service APIs
resource "google_project_service" "apis" {
  for_each = toset(local.googleapis)

  project            = var.project_id
  service            = each.key
  disable_on_destroy = false
}