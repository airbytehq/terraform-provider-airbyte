resource "airbyte_source_granola" "my_source_granola" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2024-01-01"
  }
  definition_id = "3661a6e3-c840-45a1-9601-4fd4c2224c33"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "32a2834c-39bb-4e46-8065-48b6b274024a"
}