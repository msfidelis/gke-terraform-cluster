variable "app_name" {
  description = "Cluster Name"
}

variable "gcp_region" {
    description = "Default Project Region"
}

variable "network_routing_mode" {
    description = "Routing mode for network; GLOBAL or REGIONAL"
}

variable "public_subnet_1a" {
    description = "Public Subnet 1a"
}

variable "public_subnet_1b" {
    description = "Public Subnet 1b"
}

variable "private_subnet_1a" {
    description = "Private Subnet 1a"
}

variable "private_subnet_1b" {
    description = "Private Subnet 1b"
}

variable "gke_initial_nodes" {
    description = "Initial number of nodes"
}

variable "gke_master_user" {
    description = "Kubernetes Master Username"
}

variable "gke_master_password" {
    description = "Kubernetes Master Password"
}