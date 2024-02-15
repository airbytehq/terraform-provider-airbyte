resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "b9304d3e-bf32-4902-9e61-711be882924e"
  name          = "Jimmie Aufderhar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2980d847-13eb-4ef0-94dd-9af7c7e9c462"
}