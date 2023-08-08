resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    source_type              = "postmarkapp"
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  name         = "Jon Harris"
  secret_id    = "...my_secret_id..."
  workspace_id = "217c2977-6763-4342-9403-8bfb5971e981"
}