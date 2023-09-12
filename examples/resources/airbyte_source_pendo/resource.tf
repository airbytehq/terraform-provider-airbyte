resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "pendo"
  }
  name         = "Estelle Bechtelar"
  secret_id    = "...my_secret_id..."
  workspace_id = "40847a74-2d84-4496-8bde-ecf6b99bc635"
}