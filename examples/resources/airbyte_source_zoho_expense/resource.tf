resource "airbyte_source_zoho_expense" "my_source_zohoexpense" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    data_center   = "com"
    refresh_token = "...my_refresh_token..."
  }
  definition_id = "bce026c9-47f2-4969-a837-8d81f4158efa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e6a5b65-e5b0-4fff-aaf8-f7f6f5fb6188"
}