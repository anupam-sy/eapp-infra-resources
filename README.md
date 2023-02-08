# Terraform Code Sets
This repository contains Terraform code for Individual Resource deployment on Google Public Cloud.

## Prerequisites
Below prerequisites must be fulfilled for successfull execution of code.

### Software Requirement:
Resources in this repository are meant for use with Terraform 1.3.6 (Check the version using `terraform --version`). If you don't have the compatible version, download it from official Terraform repository.

-   [gcloud sdk](https://cloud.google.com/sdk/install) >= 332.0.0
-   [Terraform](https://www.terraform.io/downloads.html) >= 1.3.6
-   [terraform-provider-google] plugin = 4.52.0
-   [terraform-provider-google-beta] plugin = 4.52.0
-   [terraform-provider-random] plugin = 3.4.0

### Permissions Requirement:
In order to execute these templates you must have a Service Account with the following roles. Access can be more fine-grained to follow Principle of least privilege (PoLP).

- `roles/resourcemanager.projectOwner` on all the projects where you want to house your resources using service account's email.
- `roles/storage.admin` on the project housing terraform state files.

### Project API Requirement:
In order to use the services, required APIs must be enabled before resource deployment. Enable the APIs using below mentioned gcloud command.

	gcloud services enable servicenetworking.googleapis.com \
	    cloudresourcemanager.googleapis.com \
	    compute.googleapis.com \
	    iam.googleapis.com

### Remote Backend Setup:
To use a remote backend, create a GCS Bucket and set the versioning. Use below gcloud commands.

    gcloud config set project PROJECT_ID
	gsutil mb -c standard -l eu gs://bucket-name
	gsutil versioning set on gs://bucket-name

## Execution:
For multiple environment provisioning, use different tfstate files in backend. To execute the Terraform code, go to command prompt and then run the following commands:

-   [Required] `terraform init`
    -   To initialize the terraform with remote backend, use "-backend-config=PATH" flag partial backend configuration. To specify a single key/value pair, use the -backend-config="KEY=VALUE" option when running terraform init.

-   [Optional] `terraform validate`
    -   To check whether a configuration is syntactically valid and internally consistent, regardless of any provided variables or existing state.

-   [Optional] `terraform fmt`
    -   The terraform fmt command is used to rewrite Terraform configuration files to a canonical format and style. use "-recursive" flag to format the code inside all folders.

-   [Optional] `terraform plan -var-file="resource.tfvars" -out=tfplan`
    -   It creates an execution plan. You can use the optional -out=FILE option to save the generated plan to a file on disk, which you can later execute by passing the file to terraform apply as an extra argument.

-   [Required] `terraform apply -var-file="resource.tfvars" -auto-approve`
    -   It executes the actions proposed in a Terraform plan. In the default case, with no saved plan file, Terraform will prompt you to approve the plan before taking the described actions, unless you override that prompt using the -auto-approve option. Terraform ignores the -auto-approve flag when you pass a previously-saved plan file, because Terraform considers you passing the plan file as the approval.

-   [Optional] `terraform destroy -target="resource_type.resource_name"`
    -   The terraform destroy command is used to destory the resources defined in your Terraform configuration. To delete the specific resource, use the "target" option with destroy command.

## Reference: 
> https://github.com/GoogleCloudPlatform/solutions-terraform-cloudbuild-gitops