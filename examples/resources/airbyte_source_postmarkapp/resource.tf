resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "21b21ea9-bc9d-41c8-8f1e-e12f8a7db098"
  name          = "Mr. Cory Green"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6a87d389-094e-4fa6-bbbe-a9f5a35d1bd0"
}