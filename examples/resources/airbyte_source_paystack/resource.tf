resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 6
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "d0cd95bc-fe33-442d-8402-aef61635af9f"
  name          = "Jim Zieme"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5aa22e67-7c77-4be4-a424-4a41ce525b48"
}