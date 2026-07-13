variable "ip_groups" {
  description = <<EOT
Map of ip_groups, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - cidrs
    - tags
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    cidrs               = optional(set(string))
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ip_groups : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.ip_groups : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.ip_groups : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.ip_groups : (
        v.cidrs == null || (alltrue([for x in v.cidrs : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.ip_groups : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

