resource "digitalocean_droplet" "droplet" {
  image = var.droplet_image
  name  = var.droplet_name
  region = var.droplet_region
  size = var.droplet_size
  monitoring = var.droplet_monitoring
  ssh_keys = var.droplet_ssh_keys
  user_data = "${data.template_file.init.rendered}"
}

data "template_file" "init" {
  template = "${file("${path.module}/user-data.tpl")}"

  vars = {
    fqdn = var.wp_fqdn
    admin_email = var.wp_admin_email
    admin_user = var.wp_admin_user
    admin_password = var.wp_admin_password
    wp_version = var.wp_version
    php_version = var.php_version
  }
}