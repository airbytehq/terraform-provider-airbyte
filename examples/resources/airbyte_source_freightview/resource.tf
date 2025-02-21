resource "airbyte_source_freightview" "my_source_freightview" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
  }
  definition_id = "4f7a4016-5b9f-473f-9af2-2a7339341169"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "48c6b1f4-7968-4dc1-9fb4-e36924317ab3"
}