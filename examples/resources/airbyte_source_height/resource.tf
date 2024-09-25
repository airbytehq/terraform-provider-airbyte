resource "airbyte_source_height" "my_source_height" {
  configuration = {
    api_key      = "...my_api_key..."
    search_query = "...my_search_query..."
    start_date   = "2021-02-09T19:28:34.370Z"
  }
  definition_id = "825bea4e-c87a-4aff-ab9e-a290f7e9f416"
  name          = "Bridget Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "69c61d27-bbad-43f0-bf8c-a743bfb1506e"
}