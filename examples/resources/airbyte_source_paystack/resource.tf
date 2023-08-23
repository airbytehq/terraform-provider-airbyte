resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 7
    secret_key           = "...my_secret_key..."
    source_type          = "paystack"
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Mattie Gutkowski"
  secret_id    = "...my_secret_id..."
  workspace_id = "99257d04-f408-447a-b42d-84496cbdeecf"
}