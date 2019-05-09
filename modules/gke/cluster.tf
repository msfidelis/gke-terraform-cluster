#####################################################################
# GKE Cluster
#####################################################################
resource "google_container_cluster" "cluster" {
  name                = "${var.app_name}-k8s-cluster"
  location            = "${var.gcp_region}"

  // monitoring_service  = "monitoring.googleapis.com/kubernetes"
  // logging_service     = "logging.googleapis.com/kubernetes"

  initial_node_count  = "${var.gke_initial_nodes}"

  addons_config {
    network_policy_config {
      disabled = true
    }
  }

  master_auth {
    username = "${var.gke_master_user}"
    password = "${var.gke_master_password}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/compute",
    ]
  }
}