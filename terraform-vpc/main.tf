variable "region" {}
variable "name" {}

module "vpc" {
  source = "./vpc"
  name   = var.name
  region = var.region
}