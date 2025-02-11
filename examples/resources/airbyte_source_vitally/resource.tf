resource "airbyte_source_vitally" "my_source_vitally" {
  configuration = {
    api_key = "...my_api_key..."
    status  = "active"
  }
  definition_id = "4ccbdee7-a61d-46e5-a8de-2826c945689b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7acaf484-b8ee-458f-8670-2faa57d0d719"
}