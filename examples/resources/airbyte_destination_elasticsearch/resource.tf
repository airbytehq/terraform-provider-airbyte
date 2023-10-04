resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      destination_elasticsearch_authentication_method_api_key_secret = {
        api_key_id     = "...my_api_key_id..."
        api_key_secret = "...my_api_key_secret..."
      }
    }
    ca_certificate = "...my_ca_certificate..."
    endpoint       = "...my_endpoint..."
    upsert         = false
  }
  name         = "Frankie Rohan"
  workspace_id = "7c884619-6559-498a-a24e-ec560fc4948d"
}