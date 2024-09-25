resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    dispute_start_date = "2021-06-11T23:59:59.000Z"
    end_date           = "2021-06-11T23:59:59+00:00"
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-06-11T23:59:59+00:00"
    time_window        = 9
  }
  definition_id = "10910de8-7dfe-4701-adbd-0d10cf57eb67"
  name          = "Melody Lowe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "55d63fb2-a63d-4a09-97a6-151fac3e8ec6"
}