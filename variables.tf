variable "mounts" {
  description = <<EOT
Map of mounts, attributes below
Required:
    - path
    - type
Optional:
    - allowed_managed_keys
    - allowed_response_headers
    - audit_non_hmac_request_keys
    - audit_non_hmac_response_keys
    - default_lease_ttl_seconds
    - delegated_auth_accessors
    - description
    - external_entropy_access
    - force_no_cache
    - identity_token_key
    - listing_visibility
    - local
    - max_lease_ttl_seconds
    - namespace
    - options
    - passthrough_request_headers
    - plugin_version
    - seal_wrap
EOT

  type = map(object({
    path                         = string
    type                         = string
    allowed_managed_keys         = optional(set(string))
    allowed_response_headers     = optional(list(string))
    audit_non_hmac_request_keys  = optional(list(string))
    audit_non_hmac_response_keys = optional(list(string))
    default_lease_ttl_seconds    = optional(number)
    delegated_auth_accessors     = optional(list(string))
    description                  = optional(string)
    external_entropy_access      = optional(bool)
    force_no_cache               = optional(bool)
    identity_token_key           = optional(string)
    listing_visibility           = optional(string)
    local                        = optional(bool)
    max_lease_ttl_seconds        = optional(number)
    namespace                    = optional(string)
    options                      = optional(map(string))
    passthrough_request_headers  = optional(list(string))
    plugin_version               = optional(string)
    seal_wrap                    = optional(bool)
  }))
}

