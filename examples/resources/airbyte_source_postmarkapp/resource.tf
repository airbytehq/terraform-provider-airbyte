resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "8f2436a1-22e3-4949-8819-8a6bf6f1cbdb"
  name          = "Geraldine Pagac"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd0e48f1-e4b3-4046-9b6c-a0b303cf017c"
}