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
  name         = "Kristopher Dare"
  secret_id    = "...my_secret_id..."
  workspace_id = "db14db6b-e5a6-4859-98e2-2ae20da16fc2"
}