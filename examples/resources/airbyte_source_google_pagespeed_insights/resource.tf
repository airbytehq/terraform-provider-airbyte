resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
  configuration = {
    api_key = "...my_api_key..."
    categories = [
      "performance",
    ]
    strategies = [
      "desktop",
    ]
    urls = [
      "...",
    ]
  }
  name         = "Miss Horace Champlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "9cfd9baf-3821-4deb-b264-dad9e5fb5312"
}