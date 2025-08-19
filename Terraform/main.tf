# Configure the Google Cloud provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.1.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a public GKE cluster with a default node pool
resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.zone

  # Production-level settings
  initial_node_count = 1
  
  # Node pool settings
  node_config {
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
  }
}