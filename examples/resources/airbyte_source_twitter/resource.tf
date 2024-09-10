resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-07-12T09:29:20.072Z"
    query      = "...my_query..."
    start_date = "2020-06-17T06:17:32.127Z"
  }
  definition_id = "7c8fe575-7a30-4644-ba75-bcf4e2e1378d"
  name          = "Steven Brown"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6f7dd27a-a6e5-41f0-820e-4312d0cbfe39"
}