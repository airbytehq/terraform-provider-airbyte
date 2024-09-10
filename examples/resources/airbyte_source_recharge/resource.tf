resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = false
  }
  definition_id = "1f6c544c-20e7-43f2-bdc4-6e62d66e7277"
  name          = "Drew Herman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "92d16e1d-cb06-4fc1-b7a1-71f7c1d8bfdd"
}