output "kibana_synthetics_parameters_id" {
  description = "Map of id values across all kibana_synthetics_parameters, keyed the same as var.kibana_synthetics_parameters except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_parameter.kibana_synthetics_parameters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_synthetics_parameters_description" {
  description = "Map of description values across all kibana_synthetics_parameters, keyed the same as var.kibana_synthetics_parameters except keys with no description are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_parameter.kibana_synthetics_parameters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kibana_synthetics_parameters_key" {
  description = "Map of key values across all kibana_synthetics_parameters, keyed the same as var.kibana_synthetics_parameters except keys with no key are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_parameter.kibana_synthetics_parameters : k => v.key if v.key != null && length(v.key) > 0 }
}
output "kibana_synthetics_parameters_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_synthetics_parameters, keyed the same as var.kibana_synthetics_parameters except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_parameter.kibana_synthetics_parameters : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_synthetics_parameters_share_across_spaces" {
  description = "Map of share_across_spaces values across all kibana_synthetics_parameters, keyed the same as var.kibana_synthetics_parameters except keys with no share_across_spaces are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_parameter.kibana_synthetics_parameters : k => v.share_across_spaces if v.share_across_spaces != null }
}
output "kibana_synthetics_parameters_space_id" {
  description = "Map of space_id values across all kibana_synthetics_parameters, keyed the same as var.kibana_synthetics_parameters except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_parameter.kibana_synthetics_parameters : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_synthetics_parameters_tags" {
  description = "Map of tags values across all kibana_synthetics_parameters, keyed the same as var.kibana_synthetics_parameters except keys with no tags are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_parameter.kibana_synthetics_parameters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "kibana_synthetics_parameters_value" {
  description = "Map of value values across all kibana_synthetics_parameters, keyed the same as var.kibana_synthetics_parameters except keys with no value are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_parameter.kibana_synthetics_parameters : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}

