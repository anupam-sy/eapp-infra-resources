# Resource block to deploy VPC Network
resource "google_compute_network" "dev_vpc_01" {
  name    = var.vpc_name[0]
  project = var.project_id

  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = false
  delete_default_routes_on_create = false
}

# Resource block to deploy SubNetworks
resource "google_compute_subnetwork" "dev_vpc_01_subnet_01" {
  name                     = var.subnet_name[0]
  ip_cidr_range            = var.subnet_cidr[0]
  region                   = var.resource_region
  private_ip_google_access = true
  network                  = google_compute_network.dev_vpc_01.id
}
