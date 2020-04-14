variable "droplet_name" {
  type = string
}

variable "droplet_region" {
  type = string
}

variable "droplet_size" {
  type = string
  default = "s-1vcpu-1gb"
}

variable "droplet_monitoring" {
  default = true
}

variable "droplet_ssh_keys" {
  type = list
}

variable "droplet_image" {
  type = string
  default = "ubuntu-18-04-x64"
}

variable "wp_fqdn" {
  type = string
}

variable "wp_admin_email" {
  type = string
}

variable "wp_admin_user" {
  type = string
}

variable "wp_admin_password" {
  type = string
}

variable "wp_version" {
  type = string
}

variable "php_version" {
  type = string
}