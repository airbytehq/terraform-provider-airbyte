resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    is_sandbox    = false
    refresh_token = "...my_refresh_token..."
    source_type   = "paypal-transaction"
    start_date    = "2021-06-11T23:59:59+00:00"
  }
  name         = "Mrs. Roy Moore"
  secret_id    = "...my_secret_id..."
  workspace_id = "f569b7af-f0ea-4221-acbe-071bc163e279"
}