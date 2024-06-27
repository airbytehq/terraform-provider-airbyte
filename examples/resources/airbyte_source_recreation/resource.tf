resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "892a209c-167a-4f7b-834c-463b838dc5f9"
  name          = "Vanessa Hammes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f73a4553-5fff-45d1-934f-0cce5486a3a1"
}