resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  definition_id = "d95bcfe3-342d-4c40-aaef-61635af9f94f"
  name          = "Ivan Hansen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "22e677c7-7be4-4e42-84a4-1ce525b48930"
}