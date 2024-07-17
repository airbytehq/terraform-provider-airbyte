resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  definition_id = "8d140946-39cf-45dd-8a0c-05f536f6b9b8"
  name          = "Dave Willms"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6afbf365-d687-4e08-be39-05b6a417faeb"
}