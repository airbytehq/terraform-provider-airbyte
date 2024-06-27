resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 9
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "fad6ab5e-c8ca-4acd-8d2a-bfdc0f33811d"
  name          = "Omar Sporer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "79aa2af6-8e00-4dcd-add4-7961168b4fa7"
}