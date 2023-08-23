resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "omnisend"
  }
  name         = "Virginia Mitchell"
  secret_id    = "...my_secret_id..."
  workspace_id = "b44bd3c4-3159-4d33-a595-3c001139863a"
}