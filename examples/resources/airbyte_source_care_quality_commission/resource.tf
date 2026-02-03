resource "airbyte_source_care_quality_commission" "my_source_carequalitycommission" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "a6f37f94-d339-4827-a6e0-4e9f0abd1906"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8391a76d-7d23-49f9-b695-b5b393423cef"
}