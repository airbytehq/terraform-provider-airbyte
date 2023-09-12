resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    is_sandbox    = false
    refresh_token = "...my_refresh_token..."
    source_type   = "paypal-transaction"
    start_date    = "2021-06-11T23:59:59+00:00"
  }
  name         = "Ernestine Little"
  secret_id    = "...my_secret_id..."
  workspace_id = "da013191-1296-4466-85c1-d81f29042f56"
}