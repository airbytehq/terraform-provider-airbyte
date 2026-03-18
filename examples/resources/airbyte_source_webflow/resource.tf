resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    accept_version        = "1.0.0"
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "a very long hex sequence"
    site_id               = "a relatively long hex sequence"
  }
  definition_id = "ef580275-d9a9-48bb-af5e-db0f5855be04"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c791adda-309d-4860-a7bc-7d82a7204cff"
}