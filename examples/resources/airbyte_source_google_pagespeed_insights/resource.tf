resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
  configuration = {
    api_key = "...my_api_key..."
    categories = [
      "pwa",
    ]
    source_type = "google-pagespeed-insights"
    strategies = [
      "desktop",
    ]
    urls = [
      "...",
    ]
  }
  name         = "Miss Terrell Satterfield"
  secret_id    = "...my_secret_id..."
  workspace_id = "6230f841-fb1b-4d23-bdb1-4db6be5a6859"
}