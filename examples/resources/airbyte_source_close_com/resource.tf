resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "dcfaea55-0038-401e-9f44-6900c8feba7b"
  name          = "Annette Schiller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a08abdda-328f-46c3-b3e0-6663420a6a3a"
}