resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
    configuration = {
        access_key = "...my_access_key..."
        base = "EUR"
        ignore_weekends = true
        source_type = "exchange-rates"
        start_date = "YYYY-MM-DD"
    }
            name = "Gregory Satterfield"
            workspace_id = "bdb6eec7-4378-4ba2-9317-747dc915ad2c"
        }