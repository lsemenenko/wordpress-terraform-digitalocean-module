locals {
  droplet_ipv4_address         = "${compact(concat(digitalocean_droplet.droplet.*.ipv4_address, list("")))}"
}

output "ipv4_address" {
  description = "List of public IPv4 addresses assigned to the Droplets"
  value       = local.droplet_ipv4_address
}