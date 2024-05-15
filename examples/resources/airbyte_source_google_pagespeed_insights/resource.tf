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
  definition_id = "c9b0f0f3-5d94-4270-8e93-ebb36d8aaea0"
  name          = "Johanna Beier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c84b89e6-25ba-4e87-aa32-dc31e1b4b67e"
}