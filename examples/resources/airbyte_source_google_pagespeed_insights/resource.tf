resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
  configuration = {
    api_key = "...my_api_key..."
    categories = [
      "performance",
    ]
    source_type = "google-pagespeed-insights"
    strategies = [
      "desktop",
    ]
    urls = [
      "...",
    ]
  }
  name         = "Jeremy Schiller"
  secret_id    = "...my_secretId..."
  workspace_id = "fb4cfc1c-7623-40f8-81fb-1bd23fdb14db"
}