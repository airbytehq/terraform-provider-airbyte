resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "f58d4a06-25cb-4ff5-b31f-2b9304d3ebf3"
  name          = "Cora Barton"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e61711be-8829-424e-a80a-a2980d84713e"
}