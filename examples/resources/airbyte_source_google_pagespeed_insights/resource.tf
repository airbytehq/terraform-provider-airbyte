resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
  configuration = {
    api_key = "...my_api_key..."
    categories = [
      "seo",
    ]
    strategies = [
      "desktop",
    ]
    urls = [
      "...",
    ]
  }
  definition_id = "52d3206a-fb3a-4724-a60d-40134e58876c"
  name          = "Miss Ronald Erdman Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8ae06a57-c7c5-477a-b1e5-baddd2747bbc"
}