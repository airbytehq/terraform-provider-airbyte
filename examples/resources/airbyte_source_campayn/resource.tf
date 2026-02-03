resource "airbyte_source_campayn" "my_source_campayn" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    sub_domain            = "...my_sub_domain..."
  }
  definition_id = "598bcb37-acba-48bd-918f-7190ed03c47e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f6f14cc9-10aa-4a44-ab1c-51b01425bdbf"
}