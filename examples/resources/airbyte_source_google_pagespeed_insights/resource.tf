resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
  configuration = {
    api_key = "...my_api_key..."
    categories = [
      "pwa",
    ]
    strategies = [
      "desktop",
    ]
    urls = [
      "...",
    ]
  }
  definition_id = "fd145f48-d363-4139-8553-9f352d3206af"
  name          = "Johnny O'Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4a60d401-34e5-4887-acb0-30a128ae06a5"
}