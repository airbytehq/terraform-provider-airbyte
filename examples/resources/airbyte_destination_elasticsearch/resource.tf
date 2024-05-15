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
  definition_id = "56635457-da65-4ed4-a5e7-58afd2ad38ed"
  name          = "Dr. Lila Stiedemann"
  workspace_id  = "e2212dc7-d0e4-4e50-95ed-94b4ecb397d0"
}