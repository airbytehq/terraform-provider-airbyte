resource "airbyte_source_everhour" "my_source_everhour" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a20445f4-c824-4df3-b87f-7f75b250a588"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "82708ec6-c2bd-4b5d-b195-522529ad336c"
}