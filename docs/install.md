# Terraform
Terraform is an open-source infrastructure-as-code software tool created by HashiCorp.

## Terraform OSS Installation

### Automatic Installation
To install the terraform from package managers of your operating system, visit terraform website and follow instructions.
> https://developer.hashicorp.com/terraform/downloads

### Manual Installation
To install terraform manually, download the terraform binary from `https://releases.hashicorp.com/terraform/` and place it to your system's PATH.
```
    sudo wget https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_darwin_arm64.zip
    sudo unzip terraform_1.3.6_darwin_arm64.zip
    sudo mv terraform /usr/local/bin/
    terraform version
```

**Download Sources:**
- https://releases.hashicorp.com/terraform/
- https://developer.hashicorp.com/terraform/downloads