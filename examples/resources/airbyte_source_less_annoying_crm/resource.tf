resource "airbyte_source_less_annoying_crm" "my_source_lessannoyingcrm" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-11-22T12:32:00.554Z"
  }
  definition_id = "28307fda-8c7f-4d7e-a7fd-8dc0a9c6e14f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9aeba85e-acd2-4d3d-bab6-83f72e47e80c"
}