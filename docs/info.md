# Terraform
Terraform is an open-source infrastructure-as-code software tool created by HashiCorp.

## Terraform Commands (CLI)
We typically use below mentioned commands to execute and build infrastructure from terraform.

-   [Required] `terraform init`
    -   A working directory must be initialized before Terraform can perform any operations in it. Initialization performs several tasks to prepare a directory, including accessing state in the configured backend, downloading and installing provider plugins, and downloading modules.
    -   To initialize the terraform with remote backend, use "-backend-config=PATH" flag partial backend configuration. 
    -   To specify a single key/value pair, use the -backend-config="KEY=VALUE" option when running terraform init.

-   [Optional] `terraform validate`
    -   To check whether a configuration is syntactically valid and internally consistent, regardless of any provided variables or existing state.

-   [Optional] `terraform fmt`
    -   The terraform fmt command is used to rewrite Terraform configuration files to a canonical format and style. 
    -   Use "-recursive" flag to format the code inside all folders.

-   [Optional] `terraform plan -var-file="resource.tfvars" -out=tfplan`
    -   It creates an execution plan. 
    -   You can use the optional -out=FILE option to save the generated plan to a file on disk, which you can later execute by passing the file to terraform apply as an extra argument.
    -   You can pass the variable definition file using -var-file command-line argument.

-   [Required] `terraform apply -var-file="resource.tfvars" -auto-approve`
    -   It executes the actions proposed in a Terraform plan. 
    -   You can pass the variable definition file using -var-file command-line argument.
    -   In the default case, with no saved plan file, Terraform will prompt you to approve the plan before taking the described actions, unless you override that prompt using the -auto-approve option. 
    -   Terraform ignores the -auto-approve flag when you pass a previously-saved plan file, because Terraform considers you passing the plan file as the approval.

-   [Optional] `terraform destroy -target="resource_type.resource_name" -auto-approve`
    -   The terraform destroy command is used to destory the resources defined in your Terraform configuration.
    -   To delete the specific resource, use the "target" option with destroy command.