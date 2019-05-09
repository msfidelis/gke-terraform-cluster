


resource "google_compute_subnetwork" "private_subnet1a" {
  name          =  "private-subnet-${var.gcp_region}a"
  ip_cidr_range = "${var.private_subnet_1a}"
  network       = "${google_compute_network.vpc_network.self_link}"
  region        = "${var.gcp_region}"
}


resource "google_compute_subnetwork" "private_subnet1b" {
  name          =  "private-subnet-${var.gcp_region}b"
  ip_cidr_range = "${var.private_subnet_1b}"
  network       = "${google_compute_network.vpc_network.self_link}"
  region        = "${var.gcp_region}"
}