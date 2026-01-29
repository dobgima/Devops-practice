terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.6.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "3.0.1"
    }
  }
}

provider "minikube" {
  # Configuration options
}
provider "kubernetes" {
  host                   = minikube.cluster.server
  client_certificate     = base64decode(minikube.cluster.client_certificate)
  client_key             = base64decode(minikube.cluster.client_key)
  cluster_ca_certificate = base64decode(minikube.cluster.cluster_ca_certificate)
}