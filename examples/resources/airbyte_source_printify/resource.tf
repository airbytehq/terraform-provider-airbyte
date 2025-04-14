resource "airbyte_source_printify" "my_source_printify" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "0ba76cf3-b282-487f-8ce1-e46ca20920ea"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7728d2e3-17a1-401a-bad7-1aaa3c395198"
}