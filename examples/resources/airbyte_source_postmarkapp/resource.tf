resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    source_type              = "postmarkapp"
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  name         = "Boyd Stoltenberg"
  secret_id    = "...my_secret_id..."
  workspace_id = "405cb331-d492-4f4f-927f-b0e0bf1f8217"
}