resource "airbyte_source_cin7" "my_source_cin7" {
  configuration = {
    accountid             = "...my_accountid..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "51200595-41b5-43e9-aa42-79bb9acade16"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f277b45f-62cc-46b3-867f-b3733c65ec7e"
}