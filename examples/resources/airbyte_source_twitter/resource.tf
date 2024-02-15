resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2021-02-14T11:13:26.293Z"
    query      = "...my_query..."
    start_date = "2022-12-21T00:24:01.911Z"
  }
  definition_id = "dd3cfb0a-a2fa-4d05-8413-0837d3e5de43"
  name          = "Rene Adams"
  secret_id     = "...my_secret_id..."
  workspace_id  = "63cc02bc-2f7f-45df-b2c2-6b4986915d33"
}