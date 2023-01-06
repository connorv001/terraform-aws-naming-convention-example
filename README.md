# terraform-aws-naming-convention-example


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.3 |

## Providers

No providers.

## Basic usage example 

```hcl
module "naming_conventions" {
  application  = lower(var.application)
  environment  = lower(var.environment)
  map-migrated = lower(var.map_migrated)
  product      = lower(var.product)
  region       = lower(var.region)
  tf-repo      = lower(var.tf_repo)
  source       = "../tagging"
}

provider "aws" {
  region = var.region
  default_tags {
    tags = module.naming_conventions.tags
  }
}

resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true

  tags = {
    Name = "${data.aws_caller_identity.current.account_id}-vpc-${local.environment}-${module.naming_conventions.region_code}"
  }
}
```

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | Name of application, e.g. queue-processor | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of AWS environment/account, e.g. review | `string` | n/a | yes |
| <a name="input_managing_cost_center"></a> [managing\_cost\_center](#input\_managing\_cost\_center) | Name of managing cost center, for now the default is always 390 | `number` | `390` | no |
| <a name="input_map_migrated"></a> [map\_migrated](#input\_map\_migrated) | Name of map-migrated tag, required for AWS Migration Acceleration Program tracking, for now the default is always d-server-01n0gu7gpxq75q | `string` | `"d-server-01n0gu7gpxq75q"` | no |
| <a name="input_product"></a> [product](#input\_product) | Name of Orion product, e.g. orion connect | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Name of AWS region | `string` | `"us-east-1"` | no |
| <a name="input_team"></a> [team](#input\_team) | Name of team that owns a tagged resource, e.g. devops | `string` | `null` | no |
| <a name="input_tf_backend"></a> [tf\_backend](#input\_tf\_backend) | Full path of where the terraform backend can be found. Only use this if its different from the standard | `string` | `null` | no |
| <a name="input_tf_repo"></a> [tf\_repo](#input\_tf\_repo) | Name of the repo in ADO where the code can be found | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_region_code"></a> [region\_code](#output\_region\_code) | n/a |
| <a name="output_tags"></a> [tags](#output\_tags) | n/a |