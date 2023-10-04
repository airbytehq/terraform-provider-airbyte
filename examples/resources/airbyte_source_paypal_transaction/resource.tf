resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    is_sandbox    = true
    refresh_token = "...my_refresh_token..."
    start_date    = "2021-06-11T23:59:59+00:00"
  }
  name         = "Daniel Graham"
  secret_id    = "...my_secret_id..."
  workspace_id = "6c5d5cf5-0fbf-4713-864e-d5bf6d67306c"
}