resource "airbyte_source_productive" "my_source_productive" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    organization_id       = "...my_organization_id..."
  }
  definition_id = "daa44875-85d0-4628-bf0c-515f934a7fd0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "61cb4309-3f63-42e6-bc93-d4d968af235a"
}