variable "gcp_project_id" {
    description = "Create this on GCP Console"
    default     = "nanoshots"
}

variable "app_name" {
    description = "Cluster Name"
    default     = "k8s-demo"
}

variable "gke_initial_nodes" {
    description = "Initial number of nodes"
    default     = 2
}

variable "gke_master_user" {
    description = "Kubernetes Master Username"
    default     = "k8s-admin"
}

variable "gke_master_password" {
    description = "Kubernetes Master Password"
    default     = "Deo2yaezethah8waik6o"
}

variable "subnet_cidr" {
    description = "Default Network cidr"
    default     = ""
}

variable "gcp_region" {
    description = "Default Project Region"
    default     = "us-east1"
}

variable "public_subnet_1a" {
    default     = "10.26.1.0/24"
}

variable "public_subnet_1b" {
    default     = "10.26.2.0/24"
}

variable "private_subnet_1a" {
    default     = "10.26.3.0/24"
}

variable "private_subnet_1b" {
    default     = "10.26.4.0/24"
}

variable "network_routing_mode" {
    description = "Routing mode for network; GLOBAL or REGIONAL"
    default     = "GLOBAL"
}