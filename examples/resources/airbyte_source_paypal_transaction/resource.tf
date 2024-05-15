resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    dispute_start_date = "2021-06-11T23:59:59.000Z"
    end_date           = "2021-06-11T23:59:59+00:00"
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-06-11T23:59:59Z"
    time_window        = 6
  }
  definition_id = "72363e09-a2aa-4e62-99d7-7025755e6995"
  name          = "Darrell Kuphal"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2df19942-2b36-4299-b6b7-41dbfafbdd34"
}