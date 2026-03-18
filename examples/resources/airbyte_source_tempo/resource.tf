resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
  }
  definition_id = "d1aa448b-7c54-498e-ad95-263cbebcd2db"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b1cfbd4-e84b-4c48-9a44-c2e985ba6e1b"
}