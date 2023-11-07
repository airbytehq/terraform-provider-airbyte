resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  name         = "Danielle Borer"
  secret_id    = "...my_secret_id..."
  workspace_id = "5e4d38a3-0ea5-46cd-ba27-fbf6225b4bae"
}