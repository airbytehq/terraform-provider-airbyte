resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    company_id            = 8
  }
  definition_id = "3b046ac7-d8d3-4eb3-b122-f96b2a16d8a8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "057cfcf4-95ad-4bfd-a7be-d97df8787ae0"
}