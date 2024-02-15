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
  definition_id = "dc8fd2a7-f940-4dec-84e2-16dff8929e4d"
  name          = "Mr. Florence O'Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "494f7d68-d64a-4810-b295-9587ed0c47c0"
}