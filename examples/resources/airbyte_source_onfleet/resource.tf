resource "airbyte_source_onfleet" "my_source_onfleet" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    password              = "...my_password..."
  }
  definition_id = "4bafffe5-8e6d-4726-8a4d-6659229f5f09"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "03094c43-97ec-4a28-924b-cc5cb8d3f14c"
}