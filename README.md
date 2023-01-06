# terraform-aws-naming-convention-example

## **Introduction**

This Terraform code defines variables and outputs related to tagging resources in AWS. The **`common_tags`** local value includes a set of mandatory tags that will be applied to all resources, while the **`optional_tags`** local value includes a set of optional tags that can be applied if the corresponding variables have a non-null value. The **`all_tags`** local value is created by merging the optional tags into the common tags, and any optional tag with a null value is excluded from the merged result.

The **`region_abbreviation`** local value is a map of AWS region names to abbreviated region codes, and the **`region_codes`** local value is obtained by looking up the region name in this map. If the region name is not found in the map, the default region code **`use1`** is used.

The code also defines an output named **`tags`** that returns the final set of tags, and an output named **`region_code`** that returns the abbreviated region code.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.3 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | Name of application, e.g. queue-processor | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of AWS environment/account, e.g. review | `string` | n/a | yes |
| <a name="input_managing_cost_center"></a> [managing\_cost\_center](#input\_managing\_cost\_center) | Name of managing cost center, for now the default is always 01 | `number` | `1` | no |
| <a name="input_product"></a> [product](#input\_product) | Name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Name of AWS region | `string` | `"us-east-1"` | no |
| <a name="input_team"></a> [team](#input\_team) | Name of team that owns a tagged resource, e.g. devops | `string` | `null` | no |
| <a name="input_tf_backend"></a> [tf\_backend](#input\_tf\_backend) | Full path of where the terraform backend can be found. Only use this if its different from the standard | `string` | `null` | no |
| <a name="input_tf_repo"></a> [tf\_repo](#input\_tf\_repo) | Name of the repo in Github (or otehr vcs) where the code can be found | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_region_code"></a> [region\_code](#output\_region\_code) | n/a |
| <a name="output_tags"></a> [tags](#output\_tags) | n/a |
