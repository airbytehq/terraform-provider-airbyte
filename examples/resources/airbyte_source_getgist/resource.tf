resource "airbyte_source_getgist" "my_source_getgist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a6a1c03a-65f9-4364-9224-c3db15c4ba63"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4f2162a6-cd1d-4fcd-b011-775e66e0c812"
}