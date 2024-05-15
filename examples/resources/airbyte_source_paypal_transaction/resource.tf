resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    dispute_start_date = "2021-06-11T23:59:59.000Z"
    end_date           = "2021-06-11T23:59:59+00:00"
    is_sandbox         = true
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-06-11T23:59:59+00:00"
    time_window        = 6
  }
  definition_id = "afd0cd95-bcfe-4334-adc4-02aef61635af"
  name          = "Cary McCullough"
  secret_id     = "...my_secret_id..."
  workspace_id  = "985aa22e-677c-477b-a4e4-244a41ce525b"
}