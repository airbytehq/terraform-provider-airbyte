resource "airbyte_source_nytimes" "my_source_nytimes" {
    configuration = {
        api_key = "...my_api_key..."
        end_date = "1851-01"
        period = "1"
        share_type = "facebook"
        source_type = "nytimes"
        start_date = "1851-01"
    }
            name = "Allen Grant"
            workspace_id = "dfa4a197-f6de-4922-951f-e1712099853e"
        }