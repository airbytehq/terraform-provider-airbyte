resource "airbyte_source_google_analytics_v4" "my_source_googleanalyticsv4" {
    configuration = {
        credentials =     {
                access_token = "...my_access_token..."
                auth_type = "Client"
                client_id = "...my_client_id..."
                client_secret = "...my_client_secret..."
                refresh_token = "...my_refresh_token..."
            }
        custom_reports = "...my_custom_reports..."
        source_type = "google-analytics-v4"
        start_date = "2020-06-01"
        view_id = "...my_view_id..."
        window_in_days = 60
    }
            name = "Carrie Haley"
            workspace_id = "ea342260-e9b2-400c-a78a-1bd8fb7a0a11"
        }