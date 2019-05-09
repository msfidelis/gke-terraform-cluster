


resource "google_compute_subnetwork" "public_subnet1a" {
  name          =  "public-subnet-${var.gcp_region}a"
  ip_cidr_range = "${var.public_subnet_1a}"
  network       = "${google_compute_network.vpc_network.self_link}"
  region        = "${var.gcp_region}"
}


resource "google_compute_subnetwork" "public_subnet1b" {
  name          =  "public-subnet-${var.gcp_region}b"
  ip_cidr_range = "${var.public_subnet_1b}"
  network       = "${google_compute_network.vpc_network.self_link}"
  region        = "${var.gcp_region}"
}