resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      destination_elasticsearch_authentication_method_api_key_secret = {
        api_key_id     = "...my_apiKeyId..."
        api_key_secret = "...my_apiKeySecret..."
        method         = "secret"
      }
    }
    ca_certificate   = "...my_ca_certificate..."
    destination_type = "elasticsearch"
    endpoint         = "...my_endpoint..."
    upsert           = false
  }
  name         = "Nathaniel Ryan"
  workspace_id = "6146c3e2-50fb-4008-842e-141aac366c8d"
}