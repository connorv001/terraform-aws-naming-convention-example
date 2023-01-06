module "tags" {
  source = "./tagging"

  application          = var.application
  environment          = var.environment
  managing_cost_center = var.managing_cost_center
  product              = var.product
  region               = var.region
  team                 = var.team
  tf_repo              = var.tf_repo
  tf_backend           = var.tf_backend
}

output "tags" {
  value = module.tags.tags
}

output "region_code" {
  value = module.tags.region_code
}