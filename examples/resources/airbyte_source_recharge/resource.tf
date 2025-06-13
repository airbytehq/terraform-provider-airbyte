resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    lookback_window_days      = 3
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = false
  }
  definition_id = "65c9c52e-82c6-4949-b562-e7636f196391"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bcd1634a-8c70-4b63-a447-c6aa3630dfac"
}