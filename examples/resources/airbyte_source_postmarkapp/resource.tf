resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "f6b4ca64-72a5-4f8a-ac8f-edb8fc35367b"
  name          = "Stewart Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3e36b74e-8f7b-4837-976b-02a3d797c2fd"
}