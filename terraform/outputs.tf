# Output values of the resource properties

output "dev_vpc_01_id" {
  value       = google_compute_network.dev_vpc_01.id
  description = "The id of the vpc resource"
}

output "dev_vpc_01_subnet_01_id" {
  value       = google_compute_subnetwork.dev_vpc_01_subnet_01.id
  description = "The id of the subnet housed in vpc"
}
