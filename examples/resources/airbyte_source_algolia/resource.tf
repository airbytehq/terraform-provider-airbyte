resource "airbyte_source_algolia" "my_source_algolia" {
  configuration = {
    api_key        = "...my_api_key..."
    application_id = "...my_application_id..."
    object_id      = "...my_object_id..."
    search_query   = "...my_search_query..."
    start_date     = "2022-01-27T04:29:58.326Z"
  }
  definition_id = "00a54114-c5be-4aed-90d6-a8221ddabb9f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "af54511a-0ce6-446e-a98c-15d2a04095d8"
}