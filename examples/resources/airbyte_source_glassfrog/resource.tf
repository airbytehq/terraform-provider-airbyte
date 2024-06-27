resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "42a10fbc-47ca-4706-9390-37c7eef972df"
  name          = "Rachael Boyer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "349fde89-ab27-46cb-ad00-caee12c4e65b"
}