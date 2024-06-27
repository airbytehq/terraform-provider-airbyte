resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "2d15b828-621a-4877-92e6-25cdd80ba5ff"
  name          = "Tiffany Runolfsdottir"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c10ca67a-827c-43d3-89f4-44d8a8589d84"
}