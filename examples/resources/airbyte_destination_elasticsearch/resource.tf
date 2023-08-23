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
    upsert           = false
  }
  name         = "Dr. Randolph McDermott"
  workspace_id = "443a1108-e0ad-4cf4-b921-879fce953f73"
}