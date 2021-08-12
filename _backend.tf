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
    bucket      = "foundation-tfstates"
    prefix      = "workload-dev"
  }
}