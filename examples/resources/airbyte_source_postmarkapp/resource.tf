resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "179a4030-1bb8-47b1-ba43-b1ead703a4ee"
  name          = "Russell Ernser"
  secret_id     = "...my_secret_id..."
  workspace_id  = "553942b5-8b6d-40d2-8932-d7e88d8619ec"
}