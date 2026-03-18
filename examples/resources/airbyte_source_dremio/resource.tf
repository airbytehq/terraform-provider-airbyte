resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    base_url              = "https://app.dremio.cloud"
  }
  definition_id = "d99e9ace-8621-46c2-9144-76ae4751d64b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bc94ab67-bd15-4a03-b2b5-efdb5daa2068"
}