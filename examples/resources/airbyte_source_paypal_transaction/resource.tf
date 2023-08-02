resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    is_sandbox    = true
    refresh_token = "...my_refresh_token..."
    source_type   = "paypal-transaction"
    start_date    = "2021-06-11T23:59:59"
  }
  name         = "Mattie Gutkowski"
  secret_id    = "...my_secretId..."
  workspace_id = "6aed4aec-b753-47cd-9222-c9ff57491aab"
}