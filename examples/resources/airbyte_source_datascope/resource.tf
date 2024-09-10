resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  definition_id = "56b2ffd5-d6c6-49da-9497-add71ffdea58"
  name          = "Kristi Beahan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "09edcef2-c435-47e7-ab14-9e6fe9a76bd2"
}