resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    additional_properties     = "{ \"see\": \"documentation\" }"
    lookback_window_days      = 0
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = true
  }
  definition_id = "45d2e135-2ede-49e1-939f-3e3ec357a65e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bcd1634a-8c70-4b63-a447-c6aa3630dfac"
}