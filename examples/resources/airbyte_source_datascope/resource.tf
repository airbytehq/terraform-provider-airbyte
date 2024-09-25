resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  definition_id = "e08fd2ca-f83f-4045-910a-7c570570b889"
  name          = "Tara Medhurst"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e6d7c2f-caa3-486d-a1d2-ddf0351c49c6"
}