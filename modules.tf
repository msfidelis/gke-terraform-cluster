module "network" {
    source                  = "./modules/network"
    app_name                = "${var.app_name}"
    gcp_region              = "${var.gcp_region}"
    public_subnet_1a        = "${var.public_subnet_1a}"
    public_subnet_1b        = "${var.public_subnet_1b}"
    private_subnet_1a       = "${var.private_subnet_1a}"
    private_subnet_1b       = "${var.private_subnet_1b}"
    network_routing_mode    = "${var.network_routing_mode}"
}

module "gke" {
    source                  = "./modules/gke"
    app_name                = "${var.app_name}"
    gcp_region              = "${var.gcp_region}"
    public_subnet_1a        = "${var.public_subnet_1a}"
    public_subnet_1b        = "${var.public_subnet_1b}"
    private_subnet_1a       = "${var.private_subnet_1a}"
    private_subnet_1b       = "${var.private_subnet_1b}"
    network_routing_mode    = "${var.network_routing_mode}"
    gke_initial_nodes       = "${var.gke_initial_nodes}"
    gke_master_user         = "${var.gke_master_user}"
    gke_master_password     = "${var.gke_master_password}"
}