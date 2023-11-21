resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  definition_id = "8dbe50fc-b32a-4781-b3ab-b82e6a7189e9"
  name          = "Erin Johns"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4638d140-9463-49cf-9dd4-a0c05f536f6b"
}