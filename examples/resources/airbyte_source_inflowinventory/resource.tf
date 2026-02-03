resource "airbyte_source_inflowinventory" "my_source_inflowinventory" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    companyid             = "...my_companyid..."
  }
  definition_id = "8ca54ed0-b3e7-4fdb-9eab-4a67eb2311b9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8382ff51-a79f-4fc0-bb86-7904d5dcb7bd"
}