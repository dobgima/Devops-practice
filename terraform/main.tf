resource "minikube_cluster" "docker" {
  driver       = "docker"
  cluster_name = "Devops-practice-Cluster"
  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}