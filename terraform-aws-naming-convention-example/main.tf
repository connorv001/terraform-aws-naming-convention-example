locals {
  # Common tags to be assigned to all resources
  common_tags = {
    application          = lower(format("%v", var.application))
    environment          = lower(format("%v", var.environment))
    managing-cost-center = lower(format("%v", var.managing_cost_center))
    map-migrated         = lower(format("%v", var.map_migrated))
    product              = lower(format("%v", var.product))
  }

  optional_tags = {
    team       = lower(format("%v", var.team))
    tf-backend = lower(format("%v", var.tf_backend))
    tf-repo    = lower(format("%v", var.tf_repo))
  }

  all_tags = merge({
    for key, value in local.optional_tags :
    key => value
    if value != "null"
  }, local.common_tags)

  region_abbreviation = {
    "us-east-1" = "use1"
    "us-east-2" = "use2"
    "us-west-1" = "usw1"
    "us-west-2" = "usw2"
  }

  region_codes = lookup(local.region_abbreviation, var.region, "use1")
}