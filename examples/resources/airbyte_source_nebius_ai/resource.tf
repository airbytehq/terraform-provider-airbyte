resource "airbyte_source_nebius_ai" "my_source_nebiusai" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    limit                 = "...my_limit..."
    start_date            = "2020-01-12T01:54:24.628Z"
  }
  definition_id = "657149a4-7a72-4543-b795-728fa1ea0b52"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb05bdc8-239b-4ce4-af0e-f723cb07cdf6"
}