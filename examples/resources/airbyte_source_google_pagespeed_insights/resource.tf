resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
    configuration = {
        api_key = "...my_api_key..."
        categories = [
            "performance",
        ]
        source_type = "google-pagespeed-insights"
        strategies = [
            "mobile",
        ]
        urls = [
            "...",
        ]
    }
            name = "Theresa Terry"
            workspace_id = "1f849382-5fdc-442c-876c-2c2dfb4cfc1c"
        }