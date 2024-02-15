resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = true
  }
  definition_id = "bf94a013-97d3-4dfd-90af-f660497cb974"
  name          = "Jared Stanton Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1cbe4b7d-aa2d-47b0-a155-0aada4df01cf"
}