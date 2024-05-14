resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  definition_id = "f9cf17c9-c1c9-4188-a190-0dfc35041fcd"
  name          = "Shaun Schimmel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "262ef24d-9236-49b1-bf5a-7ba288f10a06"
}