resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  definition_id = "d79a85cb-7246-4518-8216-19872363e09a"
  name          = "Monique Nitzsche"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2d9d7702-5755-4e69-95c5-7652df199422"
}