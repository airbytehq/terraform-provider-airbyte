resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "1c6d5241-e982-41d4-bc03-242ccd2763a0"
  name          = "Allen Beier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "91c3df25-9349-4552-9c82-58f30a27183b"
}