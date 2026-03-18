resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    apikey                = "...my_apikey..."
    query_campsites       = "...my_query_campsites..."
  }
  definition_id = "25d7535d-91e0-466a-aa7f-af81578be277"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e7206d78-e108-4c98-9dd6-67c5c961d1d7"
}