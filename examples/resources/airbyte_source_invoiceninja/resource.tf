resource "airbyte_source_invoiceninja" "my_source_invoiceninja" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "f2d2129c-ec78-4505-b633-2dd3332d0201"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1a81982e-a14d-48a7-8a4e-fa5bae7c0b5d"
}