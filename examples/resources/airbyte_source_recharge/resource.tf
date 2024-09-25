resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = false
  }
  definition_id = "2cdcae9f-85c7-4017-b805-26f8856cdf3f"
  name          = "Pat Zemlak"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1999214f-3ffa-448a-8adc-06400b7b58d1"
}