# VPC module

The vpc module is the one from [upstream](https://github.com/terraform-aws-modules/terraform-aws-vpc).

To customize it. Modify the `vpc/terragrunt.hcl` file. You can use any inputs
available in the upstream module.

```json
{!terragrunt/live/production/us-east-2/clusters/demo/vpc/terragrunt.hcl!}
```
