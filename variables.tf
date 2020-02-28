variable "droplet_name" {}
variable "droplet_region" {}
variable "droplet_size" {}
variable "droplet_monitoring" {}
variable "droplet_ssh_keys" {}
variable "droplet_image" {
  type = string
  default = "ubuntu-18-04-x64"
}

variable "wp_fqdn" {}
variable "wp_admin_email" {}