resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "126eb569-4431-42d5-95e6-a2d83c0cc98d"
  name          = "Mr. Leo Greenfelder"
  secret_id     = "...my_secret_id..."
  workspace_id  = "56513936-1b04-4889-a6ab-9cfe2e85afcc"
}