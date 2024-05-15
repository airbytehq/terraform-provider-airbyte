resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-07-05T12:18:51.962Z"
    query      = "...my_query..."
    start_date = "2021-11-23T00:10:09.937Z"
  }
  definition_id = "cbe7ccff-9d07-4247-87a4-b37eb205ddb7"
  name          = "Ryan Rice Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "95e07e10-3643-4a6d-bd2a-60225b2ac62e"
}