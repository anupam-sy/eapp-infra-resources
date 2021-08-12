# Variable Declaration - Project, Region, Zone, Labels
variable "project_id" {}
variable "resource_region" {}
variable "resource_zone" {}

variable "resource_labels" {
  description = "Resource Labels"
  default = {
    "env"     = "dev"
    "project" = "foundation"
  }
}

# Variable Declaration - IaaS (VPC Network, SubNetwork, Cloud VPN, GCE)
variable "vpc_name" {}
variable "subnet_name" {}
variable "subnet_cidr" {}
variable "gce_name" {}
variable "gce_machine_type" {}
