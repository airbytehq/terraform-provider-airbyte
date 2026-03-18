resource "airbyte_source_productive" "my_source_productive" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    organization_id       = "...my_organization_id..."
  }
  definition_id = "51766ab3-df25-4c8c-98a4-647440d0dfbb"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "61cb4309-3f63-42e6-bc93-d4d968af235a"
}