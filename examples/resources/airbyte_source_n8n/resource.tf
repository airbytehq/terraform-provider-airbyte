resource "airbyte_source_n8n" "my_source_n8n" {
  configuration = {
    api_key = "...my_api_key..."
    host    = "...my_host..."
  }
  definition_id = "e5b17ef5-0e79-44ac-8d17-d7808b7f3ef8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a7607c1-8e16-4a3f-83f3-768af6749902"
}