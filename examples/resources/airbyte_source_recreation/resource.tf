resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "0dc207c5-0e6f-4121-9e1f-cb26b90cc0df"
  name          = "Randall Carroll V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "892a209c-167a-4f7b-834c-463b838dc5f9"
}