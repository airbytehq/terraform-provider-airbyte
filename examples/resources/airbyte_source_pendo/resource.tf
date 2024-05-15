resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "4743ee79-bd13-4e20-8659-bbdc56c2f2e2"
  name          = "Anne Herman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6b13998d-3fc5-4430-ae06-6d4a91bbbc35"
}