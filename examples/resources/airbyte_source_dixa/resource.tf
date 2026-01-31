resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    batch_size            = 1
    start_date            = "YYYY-MM-DD"
  }
  definition_id = "c89cdab2-ae44-4bc0-a6fa-3a4b7fe80911"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2e314291-ef9d-4ed9-95b7-aa2210b0220e"
}