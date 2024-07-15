resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    dispute_start_date = "2021-06-11T23:59:59.000Z"
    end_date           = "2021-06-11T23:59:59+00:00"
    is_sandbox         = true
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-06-11T23:59:59Z"
    time_window        = 5
  }
  definition_id = "b9331a5d-dafa-4d6a-b5ec-8caacd8d2abf"
  name          = "Leland Altenwerth"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3811ddad-7d79-4aa2-af68-e00dcdadd479"
}