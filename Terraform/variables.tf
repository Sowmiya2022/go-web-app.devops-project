# Project ID where the cluster will be created
variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

# The name of the GKE cluster
variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

# The Google Cloud region
variable "region" {
  description = "The Google Cloud region."
  type        = string
}

# The Google Cloud zone
variable "zone" {
  description = "The Google Cloud zone."
  type        = string
}

# The machine type for the cluster's nodes
variable "machine_type" {
  description = "The machine type for the cluster's nodes."
  type        = string
  default     = "e2-medium"
}

# The disk size for the cluster's nodes
variable "disk_size_gb" {
  description = "The disk size for the cluster's nodes in GB."
  type        = number
  default     = 20
}