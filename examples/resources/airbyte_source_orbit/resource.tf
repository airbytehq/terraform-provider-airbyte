resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  definition_id = "b87b13a4-3b1e-4ad7-83a4-eeb23fe55394"
  name          = "Shelia Hand"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6d0d2093-2d7e-488d-8619-ec39811786e4"
}