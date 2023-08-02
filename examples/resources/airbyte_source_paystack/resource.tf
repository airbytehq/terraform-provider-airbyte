resource "airbyte_source_paystack" "my_source_paystack" {
    configuration = {
        lookback_window_days = 3
        secret_key = "...my_secret_key..."
        source_type = "paystack"
        start_date = "2017-01-25T00:00:00Z"
    }
            name = "Dominic Kunde"
            workspace_id = "7cd9222c-9ff5-4749-9aab-fa2e761f0ca4"
        }