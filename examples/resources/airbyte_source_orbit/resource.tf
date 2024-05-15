resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  definition_id = "35ff19f3-8868-45d8-941e-7db0723f9473"
  name          = "Salvatore Schmitt DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e5b71225-778f-47a0-a3c1-e08d80f694c4"
}