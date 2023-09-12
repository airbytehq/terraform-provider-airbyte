resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    source_type              = "postmarkapp"
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  name         = "Mr. Sharon Swift"
  secret_id    = "...my_secret_id..."
  workspace_id = "3deba297-be3e-490b-840d-f868fd52405c"
}