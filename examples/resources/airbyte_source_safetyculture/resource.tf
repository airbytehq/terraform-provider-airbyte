resource "airbyte_source_safetyculture" "my_source_safetyculture" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "c7d46315-a185-4b6f-bd70-5c1b4d7b4a6b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ca4aa36a-0ae2-459b-a98e-fce0d6d4c0f0"
}