resource "airbyte_source_breezy_hr" "my_source_breezyhr" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    company_id            = "...my_company_id..."
  }
  definition_id = "4901bca7-7efd-446a-a277-6a50b8c44cb9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ccf8980-c739-4d4f-8370-185f76684798"
}