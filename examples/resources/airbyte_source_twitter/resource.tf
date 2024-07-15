resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-12-29T05:52:40.964Z"
    query      = "...my_query..."
    start_date = "2022-12-24T13:40:20.697Z"
  }
  definition_id = "47267ce8-6a32-42e0-ab7e-6dd49df5c359"
  name          = "Blanche Hartmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7ddbd797-d2eb-4894-bd68-2a677b1b8dbb"
}