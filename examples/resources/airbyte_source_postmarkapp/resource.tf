resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "1bd0fb63-21f6-4b4c-a647-2a5f8aec8fed"
  name          = "Felix Wisoky"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5367bfee-523e-436b-b4e8-f7b837d76b02"
}