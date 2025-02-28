include "root" {
  path           = find_in_parent_folders()
  expose         = true
  merge_strategy = "deep"
}

terraform {
  source = "github.com/particuleio/terraform-aws-kms.git//.?ref=v1.1.0"
}

inputs = {
  description = "EKS Secret Encryption Key for ${include.root.locals.full_name}"
  alias       = replace("${include.root.locals.full_name}_secret_encryption", "_", "-")
  tags = merge(
    include.root.locals.custom_tags
  )
  policy_flavor = "eks_root_volume_encryption"
}
