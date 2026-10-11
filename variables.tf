variable "kibana_synthetics_parameters" {
  description = <<EOT
Map of kibana_synthetics_parameters, attributes below
Required:
    - key
    - value
Optional:
    - description
    - share_across_spaces
    - space_id
    - tags
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    key                 = string
    value               = string
    description         = optional(string)
    share_across_spaces = optional(bool)
    space_id            = optional(string)
    tags                = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

