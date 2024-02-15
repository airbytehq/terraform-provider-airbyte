resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    is_sandbox    = true
    refresh_token = "...my_refresh_token..."
    start_date    = "2021-06-11T23:59:59+00:00"
    time_window   = 8
  }
  definition_id = "aacd8d2a-bfdc-40f3-b811-ddad7d79aa2a"
  name          = "Cecil Langworth Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "dcdadd47-9611-468b-8fa7-262d2a48f976"
}