resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "ba7b45cf-ea08-4abd-9a32-8f6c373e0666"
  name          = "Miss Eva Collier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a3ab4d44-755b-4910-a5c9-99e89cbd0e8f"
}