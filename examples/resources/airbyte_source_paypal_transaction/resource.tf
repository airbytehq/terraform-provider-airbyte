resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    dispute_start_date = "2021-06-11T23:59:59.000Z"
    end_date           = "2021-06-11T23:59:59+00:00"
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-06-11T23:59:59Z"
    time_window        = 9
  }
  definition_id = "61711be8-8292-44ee-80aa-2980d84713eb"
  name          = "Mrs. Darnell Adams"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d9af7c7e-9c46-4209-aa52-c707cb05c4a8"
}