resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 1
    start_date = "YYYY-MM-DD"
  }
  definition_id = "9f9b4783-ac23-42bf-a41c-80b23345c949"
  name          = "Arturo Hammes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9f5a34ff-680c-488d-8e9f-7431721e4227"
}