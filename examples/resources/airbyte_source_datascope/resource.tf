resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  name         = "Antonia Bradtke"
  secret_id    = "...my_secret_id..."
  workspace_id = "ddc2da36-2faf-41b2-8fe2-6cb1bb0550b4"
}