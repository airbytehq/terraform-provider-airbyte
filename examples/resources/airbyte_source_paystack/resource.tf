resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 10
    secret_key           = "...my_secret_key..."
    source_type          = "paystack"
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Dr. Darren Kemmer DDS"
  secret_id    = "...my_secretId..."
  workspace_id = "a4d456ef-1031-4e68-99f0-c2001e22cd55"
}