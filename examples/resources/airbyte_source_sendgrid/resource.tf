resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-03-20T14:31:02.853Z"
  }
  definition_id = "5a7d2b46-09d4-4ec6-867c-968cce93394d"
  name          = "Gerard Frami"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b32f900f-8cfe-4737-8a58-77022972e237"
}