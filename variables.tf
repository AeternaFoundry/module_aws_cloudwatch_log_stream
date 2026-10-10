variable "cloudwatch_log_streams" {
  description = <<EOT
Map of cloudwatch_log_streams, attributes below
Required:
    - log_group_name
    - name
Optional:
    - region
EOT

  type = map(object({
    log_group_name = string
    name           = string
    region         = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

