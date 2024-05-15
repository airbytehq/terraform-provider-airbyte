resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "ec3d2ab4-198d-42ef-a5e3-4c931e7a72ef"
  name          = "Noah Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c4d080cd-e039-4dd5-a8c5-778ddd10910d"
}