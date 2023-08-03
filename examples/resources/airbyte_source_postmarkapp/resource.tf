resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    source_type              = "postmarkapp"
    x_postmark_account_token = "...my_X-Postmark-Account-Token..."
    x_postmark_server_token  = "...my_X-Postmark-Server-Token..."
  }
  name         = "Sue Jerde"
  workspace_id = "d95f7aa2-b241-4136-95d1-e6698fcc4596"
}