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
  definition_id = "403ba1bd-8103-4cfb-8228-49b585759fd7"
  name          = "Ervin Koss"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a20ea69f-1b1a-4975-9d1b-5a0295b197bb"
}