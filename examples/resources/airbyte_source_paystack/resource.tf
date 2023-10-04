resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 8
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Elias Kautzer"
  secret_id    = "...my_secret_id..."
  workspace_id = "faeff480-df14-43ee-90f8-279e427b2c34"
}