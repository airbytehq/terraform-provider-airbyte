resource "airbyte_source_ashby" "my_source_ashby" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "8cc76dd7-521b-4116-ab6d-3a729514b42f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1504cb53-798f-4a4b-b6d3-b8960bbc6204"
}