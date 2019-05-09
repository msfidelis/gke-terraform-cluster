resource "google_compute_network" "vpc_network" {
  name                    = "${var.app_name}-network"
  auto_create_subnetworks = "false"
  routing_mode            = "${var.network_routing_mode}"
}