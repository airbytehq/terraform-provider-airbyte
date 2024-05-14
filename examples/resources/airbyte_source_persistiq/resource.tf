resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "c4743ee7-9bd1-43e2-8465-9bbdc56c2f2e"
  name          = "Mary Cummings"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c6b13998-d3fc-4543-8ae0-66d4a91bbbc3"
}