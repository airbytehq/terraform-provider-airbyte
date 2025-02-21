resource "airbyte_source_plaid" "my_source_plaid" {
  configuration = {
    access_token = "...my_access_token..."
    api_key      = "...my_api_key..."
    client_id    = "...my_client_id..."
    plaid_env    = "sandbox"
    start_date   = "2022-03-19"
  }
  definition_id = "44b2eab0-7f1c-42f4-907b-f94107b2f6c4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "59a946a0-15f9-4907-92fa-47403fc1e3d9"
}