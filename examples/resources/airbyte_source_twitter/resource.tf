resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2021-04-21T11:17:41.200Z"
    query      = "...my_query..."
    start_date = "2022-09-15T17:46:04.469Z"
  }
  definition_id = "daf01c7b-ae15-429d-8545-fe15a70ff5c6"
  name          = "Sally Pollich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "edc6409a-047c-475e-8f25-490869daf063"
}