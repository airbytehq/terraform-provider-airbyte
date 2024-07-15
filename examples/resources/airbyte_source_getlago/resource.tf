resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key = "...my_api_key..."
    api_url = "...my_api_url..."
  }
  definition_id = "a0582852-7913-4edf-8f9c-9058e69d20ee"
  name          = "Raquel Gutkowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "55c695e2-f08e-4b76-a351-cef20de4cfc3"
}