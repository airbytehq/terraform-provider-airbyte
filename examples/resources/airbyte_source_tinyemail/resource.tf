resource "airbyte_source_tinyemail" "my_source_tinyemail" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "d6880cad-4345-4a5e-a376-5787d6d70030"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "27ad5577-2fbe-46d1-a7ea-f81a2e77a75e"
}