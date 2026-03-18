resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2017-01-25T00:00:00Z"
  }
  definition_id = "b6604cbd-1b12-4c08-8767-e140d0fb0877"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f652492e-d54d-49b1-ad23-ddfd2d8e7250"
}