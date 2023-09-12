resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      destination_elasticsearch_authentication_method_api_key_secret = {
        api_key_id     = "...my_api_key_id..."
        api_key_secret = "...my_api_key_secret..."
        method         = "secret"
      }
    }
    ca_certificate   = "...my_ca_certificate..."
    destination_type = "elasticsearch"
    endpoint         = "...my_endpoint..."
    upsert           = true
  }
  name         = "Carolyn Rohan"
  workspace_id = "90f3443a-1108-4e0a-9cf4-b921879fce95"
}