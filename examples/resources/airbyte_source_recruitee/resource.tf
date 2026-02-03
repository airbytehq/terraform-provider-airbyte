resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    company_id            = 8
  }
  definition_id = "53294a7e-92a7-4ac0-b80c-e8e49fae074e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "057cfcf4-95ad-4bfd-a7be-d97df8787ae0"
}