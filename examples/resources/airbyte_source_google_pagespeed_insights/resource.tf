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
  definition_id = "a46153eb-240d-4626-9488-7ccaaf58e0f5"
  name          = "Lawrence Casper"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d6014991-0eec-4fc7-b384-ec604057d045"
}