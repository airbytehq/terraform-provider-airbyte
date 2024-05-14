resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-10-03T19:41:47.524Z"
    query      = "...my_query..."
    start_date = "2020-12-11T04:40:49.366Z"
  }
  definition_id = "7992cd63-d338-41ef-a3f7-d5a433d30ca4"
  name          = "Ernesto McClure"
  secret_id     = "...my_secret_id..."
  workspace_id  = "84d9ab34-5ef3-4183-8b2e-52a86adbb57c"
}