resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    is_sandbox    = true
    refresh_token = "...my_refresh_token..."
    source_type   = "paypal-transaction"
    start_date    = "2021-06-11T23:59:59+00:00"
  }
  name         = "Rodolfo Champlin"
  workspace_id = "e2e10594-4b93-45d2-b7a7-2f90849d6aed"
}