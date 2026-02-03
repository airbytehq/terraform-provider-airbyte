resource "airbyte_source_mendeley" "my_source_mendeley" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_refresh_token  = "...my_client_refresh_token..."
    client_secret         = "...my_client_secret..."
    name_for_institution  = "...my_name_for_institution..."
    query_for_catalog     = "...my_query_for_catalog..."
    start_date            = "2021-09-13T01:48:27.043Z"
  }
  definition_id = "917b21ba-a49d-4028-a1b3-f3b0ca1d4843"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "20fde304-4bb5-46af-8d99-77a55a619372"
}