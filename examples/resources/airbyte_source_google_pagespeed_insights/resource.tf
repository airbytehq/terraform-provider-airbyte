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
  definition_id = "99d63199-bd6b-4468-885e-c21a9ab567f1"
  name          = "Leticia Kling"
  secret_id     = "...my_secret_id..."
  workspace_id  = "51fa773f-cf1a-4430-ae08-2909d97bfabb"
}