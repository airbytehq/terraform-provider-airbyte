resource "airbyte_source_canny" "my_source_canny" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "1669bb94-0387-4a8c-a15d-5b4462394d07"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b8c01cfc-349e-44ef-9eb4-3b1bf0259ecc"
}