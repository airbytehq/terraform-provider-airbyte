resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      api_key_secret = {
        api_key_id     = "...my_api_key_id..."
        api_key_secret = "...my_api_key_secret..."
      }
    }
    ca_certificate = "...my_ca_certificate..."
    endpoint       = "...my_endpoint..."
    upsert         = false
  }
  definition_id = "56553a4e-50cd-4de3-bcff-11f630fa923b"
  name          = "Elisa Lakin"
  workspace_id  = "15f868bf-0372-497d-8d66-bcb9a13f0bea"
}