resource "google_compute_firewall" "allow-internal" {

  name    = "${var.app_name}-fw-allow-internal"
  network = "${google_compute_network.vpc_network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  source_ranges = [
    "${var.public_subnet_1a}",
    "${var.public_subnet_1b}",
    "${var.private_subnet_1a}",
    "${var.private_subnet_1b}"
  ]

}


resource "google_compute_firewall" "allow-http" {

  name    = "${var.app_name}-fw-allow-http"

  network = "${google_compute_network.vpc_network.name}"

  allow {
      protocol = "tcp"
      ports    = ["80"]
  }

  target_tags = ["http"]

}

resource "google_compute_firewall" "allow-ssh" {

  name    = "${var.app_name}-fw-allow-ssh"

  network = "${google_compute_network.vpc_network.name}"

  allow {
      protocol = "tcp"
      ports    = ["22"]
  }

  target_tags = ["ssh"]

}