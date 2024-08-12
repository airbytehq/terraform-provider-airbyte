resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "ae2b40c1-73d4-4d61-933d-db2a95937ced"
  name          = "Sandra Hodkiewicz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7b59a4e7-8152-4cbd-a66e-4c12d05e7f58"
}