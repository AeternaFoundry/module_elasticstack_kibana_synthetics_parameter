resource "elasticstack_kibana_synthetics_parameter" "kibana_synthetics_parameters" {
  for_each = var.kibana_synthetics_parameters

  key                 = each.value.key
  value               = each.value.value
  description         = each.value.description
  share_across_spaces = each.value.share_across_spaces
  space_id            = each.value.space_id
  tags                = each.value.tags
  timeouts            = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

