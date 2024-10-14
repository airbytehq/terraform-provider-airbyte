resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "8490dfd6-866a-4fb6-bb10-35e1cccf64bd"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e7206d78-e108-4c98-9dd6-67c5c961d1d7"
}