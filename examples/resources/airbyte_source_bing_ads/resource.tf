resource "airbyte_source_bing_ads" "my_source_bingads" {
    configuration = {
        auth_method = "oauth2.0"
        client_id = "...my_client_id..."
        client_secret = "...my_client_secret..."
        developer_token = "...my_developer_token..."
        lookback_window = 10
        refresh_token = "...my_refresh_token..."
        reports_start_date = "2021-03-11"
        source_type = "bing-ads"
        tenant_id = "...my_tenant_id..."
    }
            name = "Rose Hills"
            workspace_id = "0b36f25e-a944-4f3b-b56c-11f6c37a5126"
        }