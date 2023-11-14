variable "gcp_credentials" {
  description = "GCP service account credentials in JSON format"
  type        = string
}

provider "google" {
  credentials = var.gcp_credentials
  project     = "ghactions-gke-deploy"
  region      = "us-east1-c"
}

resource "google_container_cluster" "gke_cluster" {
  name     = "podinfo-cluster"
  location = "us-east1"

  remove_default_node_pool = false
  initial_node_count = 1

  master_auth {

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}
