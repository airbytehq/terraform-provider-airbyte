resource "airbyte_source_flowlu" "my_source_flowlu" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    company               = "...my_company..."
  }
  definition_id = "63ed4d84-9994-463a-a6bc-8104dfa29037"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0539b2ac-2330-4470-8a42-925781dd75d1"
}