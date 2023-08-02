resource "airbyte_source_amazon_ads" "my_source_amazonads" {
    configuration = {
        auth_type = "oauth2.0"
        client_id = "...my_client_id..."
        client_secret = "...my_client_secret..."
        look_back_window = 10
        profiles = [
            7,
        ]
        refresh_token = "...my_refresh_token..."
        region = "EU"
        report_record_types = [
            "asins_targets",
        ]
        source_type = "amazon-ads"
        start_date = "2022-10-10"
        state_filter = [
            "enabled",
        ]
    }
            name = "Bobbie Terry"
            workspace_id = "b1e5a2b1-2eb0-47f1-96db-99545fc95fa8"
        }