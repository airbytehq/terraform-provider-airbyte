resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token = "...my_access_token..."
    start_date   = "2017-01-25T00:00:00Z"
  }
  definition_id = "c47d5036-1610-47c0-bf83-920634c9db1c"
  name          = "Julia Huels V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "282f0b30-8e78-4729-bf50-24b690b2736f"
}