resource "airbyte_source_paypal_transaction" "my_source_paypaltransaction" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    dispute_start_date = "2021-06-11T23:59:59.000Z"
    end_date           = "2021-06-11T23:59:59Z"
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-06-11T23:59:59Z"
    time_window        = 15
  }
  definition_id = "3eb04bd6-98a6-48c4-a062-47a98b062443"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "50745f0a-d8f4-4aaf-82d4-113d8f1712a4"
}