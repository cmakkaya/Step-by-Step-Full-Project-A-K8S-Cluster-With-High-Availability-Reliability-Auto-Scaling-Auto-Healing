locals {
  eks_cluster_name = var.eks_cluster_name != "" ? var.eks_cluster_name : var.name
}