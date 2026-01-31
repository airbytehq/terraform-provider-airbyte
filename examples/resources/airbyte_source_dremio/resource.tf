resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    base_url              = "...my_base_url..."
  }
  definition_id = "7d0c5c04-2644-4f84-90d3-9c3195213a4e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bc94ab67-bd15-4a03-b2b5-efdb5daa2068"
}