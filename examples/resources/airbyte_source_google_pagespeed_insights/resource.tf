resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    categories = [
      "performance"
    ]
    strategies = [
      "desktop"
    ]
    urls = [
      "..."
    ]
  }
  definition_id = "26e9a294-5883-4e18-ab22-4401b7f98355"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9300a7b0-b87b-471a-83dd-e87236710c39"
}