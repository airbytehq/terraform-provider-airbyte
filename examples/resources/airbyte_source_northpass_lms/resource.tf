resource "airbyte_source_northpass_lms" "my_source_northpasslms" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "dd4d317e-7537-456c-b6ba-264b17ce6daa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8271ed4e-14cc-456d-8874-6dfd007feb30"
}