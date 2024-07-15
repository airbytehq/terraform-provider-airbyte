resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  definition_id = "cb3edfbb-ab6a-4d0e-84a4-dc970c078573"
  name          = "Benjamin Bartell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "990f9b2c-e7a6-47a8-9150-ea86120cd618"
}