# Variable Declaration - Project, Region, Zone, Labels

variable "project_id" {
  type = string
  description = "The project ID to host the resources"
}

variable "resource_region" {
  type = string
  description = "The region to host the resources"
}

variable "resource_zone" {
  type = string
  description = "The zone to host the resources"  
}

variable "resource_labels" {
  type = map(string)
  description = "Map of labels to be associated with resources"
  default = {
    "env"     = "dev"
    "project" = "foundation"
  }
}

# Variable Declaration - IaaS (VPC Network, SubNetwork, Cloud VPN, GCE)

variable "vpc_name" {
  type = string
  description = "The name of the VPC"
}

variable "subnet_name" {
  type = list(string)
  description = "List of subnet names to be housed in VPC"
}

variable "subnet_cidr" {
  type = list(string)
  description = "List of subnet CIDRs to be housed in VPC"
}
