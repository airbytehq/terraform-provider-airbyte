resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 4
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "68b4fa72-62d2-4a48-b976-dd11df098493"
  name          = "Sally West"
  secret_id     = "...my_secret_id..."
  workspace_id  = "27890d41-f139-419c-925e-386517a80112"
}