resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "orbit"
    start_date  = "...my_start_date..."
    workspace   = "...my_workspace..."
  }
  name         = "Molly Parker DVM"
  workspace_id = "6c31cc2f-1fcb-451c-9a41-ffbe9cbd795e"
}