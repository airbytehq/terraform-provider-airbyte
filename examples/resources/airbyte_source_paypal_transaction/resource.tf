resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    dispute_start_date = "2021-06-11T23:59:59.000Z"
    end_date           = "2021-06-11T23:59:59Z"
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-06-11T23:59:59+00:00"
    time_window        = 9
  }
  definition_id = "c56c2f2e-2025-49c6-b139-98d3fc5430ae"
  name          = "Jeanette Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a91bbbc3-5ba8-492b-ad58-05ab7b9331a5"
}