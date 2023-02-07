/* Prerequisite:
1. Create the GCS Bucket using Gcloud SDK / Cloud Shell:
> gcloud config set project PROJECT_ID
> gsutil mb -c standard -l eu gs://foundation-tfstates

2. Set the Bucket versioning.
> gsutil versioning set on gs://foundation-tfstates
*/

# Configure Google Cloud Storage (GCS) Backend for Google Cloud Provider
terraform {
  backend "gcs" {
    bucket      = "mgcp-tf-states"
    prefix      = "terraform/states/dev/"
    impersonate_service_account = "terraform-manual-sa@clear-tape-374908.iam.gserviceaccount.com"
  }
}