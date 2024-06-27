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
  definition_id = "635457da-65ed-4465-a758-afd2ad38ed7e"
  name          = "Thomas Vandervort"
  workspace_id  = "2212dc7d-0e4e-4509-9ed9-4b4ecb397d06"
}