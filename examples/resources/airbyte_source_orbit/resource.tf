resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  name         = "Willard Towne"
  secret_id    = "...my_secret_id..."
  workspace_id = "0fd8ad91-61a0-45c5-a889-977eae086e3c"
}