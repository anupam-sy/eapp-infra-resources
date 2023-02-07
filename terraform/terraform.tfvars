# Variable Definition - Project, Location, Labels
project_id      = "our-pursuit-321814"
resource_region = "us-central1"
resource_zone   = "us-central1-a"

# Variable Definition - IaaS Resources
vpc_name         = ["fc-dev-vnet-01", "fc-dev-vnet-02"]
subnet_name      = ["fc-dev-snet-01", "fc-dev-snet-02"]
subnet_cidr      = ["10.0.1.0/24", "10.0.2.0/24"]
gce_name         = "dev-vm-01"
gce_machine_type = "n1-standard-1"