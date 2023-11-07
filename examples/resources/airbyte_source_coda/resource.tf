resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  name         = "Miss Forrest Heaney"
  secret_id    = "...my_secret_id..."
  workspace_id = "caa62e55-7cba-40d3-b800-2a5767fcf379"
}