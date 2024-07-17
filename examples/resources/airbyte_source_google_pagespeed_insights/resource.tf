resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
  configuration = {
    api_key = "...my_api_key..."
    categories = [
      "performance",
    ]
    strategies = [
      "mobile",
    ]
    urls = [
      "...",
    ]
  }
  definition_id = "8dfc27a8-c72c-43eb-9dc5-5714db07d769"
  name          = "Lance Dicki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "86b53a47-9a08-405f-b179-3bf9b799d631"
}