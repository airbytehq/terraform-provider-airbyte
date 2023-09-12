resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 6
    secret_key           = "...my_secret_key..."
    source_type          = "paystack"
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Dr. Boyd Wilderman"
  secret_id    = "...my_secret_id..."
  workspace_id = "2216cbe0-71bc-4163-a279-a3b084da9925"
}