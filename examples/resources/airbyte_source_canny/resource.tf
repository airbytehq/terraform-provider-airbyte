resource "airbyte_source_canny" "my_source_canny" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "ec1ffa33-bfd9-428a-a645-ece66a1a9f44"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b8c01cfc-349e-44ef-9eb4-3b1bf0259ecc"
}