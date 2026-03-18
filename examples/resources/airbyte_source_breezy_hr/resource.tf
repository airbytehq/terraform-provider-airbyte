resource "airbyte_source_breezy_hr" "my_source_breezyhr" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    company_id            = "...my_company_id..."
  }
  definition_id = "bc2c2e4f-41a1-40e3-9e82-eea19cf958ff"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ccf8980-c739-4d4f-8370-185f76684798"
}