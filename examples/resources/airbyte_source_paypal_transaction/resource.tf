resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    is_sandbox    = false
    refresh_token = "...my_refresh_token..."
    start_date    = "2021-06-11T23:59:59+00:00"
    time_window   = 7
  }
  definition_id = "dd349afd-0cd9-45bc-be33-42dc402aef61"
  name          = "Edna Hamill"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9f94f985-aa22-4e67-bc77-be4e4244a41c"
}