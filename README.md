# Terraform GCP Lab
This repository contains Terraform code for infrastructure resource deployment on Google Public Cloud.

## Prerequisites
Below prerequisites must be fulfilled for successfull execution of code.

### Software Requirement
Resources in this repository are meant for use with Terraform 1.3.6 (Check the version using `terraform version`). If you don't have the compatible version, download it from official Terraform repository. See [Installation-Guide](./docs/install.md) on how to install Terraform.

-   [gcloud sdk](https://cloud.google.com/sdk/install) >= 414.0.0
-   [Terraform](https://www.terraform.io/downloads.html) >= 1.3.6
-   [terraform-provider-google] plugin = 4.52.0
-   [terraform-provider-google-beta] plugin = 4.52.0

### Permissions Requirement
In order to execute these templates you must have a Service Account with the following roles. Access can be more fine-grained to follow Principle of least privilege (PoLP).

- `roles/resourcemanager.projectOwner` on all the projects where you want to house your resources using service account's email.
- `roles/storage.admin` on the project housing terraform state files.

### Project API Requirement
In order to use the services, required APIs must be enabled before resource deployment. Enable the APIs using below mentioned gcloud command.

	gcloud services enable servicenetworking.googleapis.com \
	    cloudresourcemanager.googleapis.com \
	    compute.googleapis.com \
	    iam.googleapis.com

### Remote Backend Setup
To use a remote backend, create a GCS Bucket and set the versioning. Use below gcloud commands.

    gcloud config set project PROJECT_ID
	gsutil mb -c standard -l eu gs://bucket-name
	gsutil versioning set on gs://bucket-name

## Execution
For multiple environment provisioning, use different tfstate files in backend. To execute the Terraform code, go to command prompt and then run the following commands:

-   [Required] `terraform init`
-   [Optional] `terraform validate`
-   [Optional] `terraform fmt`
-   [Optional] `terraform plan`
-   [Required] `terraform apply -auto-approve`

**Note:** See [Terraform-Guide](./docs/info.md) to get real-quick overview of Terraform.

## Reference
- https://github.com/GoogleCloudPlatform/solutions-terraform-cloudbuild-gitops