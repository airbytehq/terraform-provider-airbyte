resource "airbyte_source_zoho_books" "my_source_zohobooks" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    refresh_token = "...my_refresh_token..."
    region        = "in"
    start_date    = "2021-03-22T04:14:38.625Z"
  }
  definition_id = "6f8e92e2-1bc5-4376-a6c5-27667675dfca"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "13569afd-697a-4e40-9f7d-a6c0448a449b"
}