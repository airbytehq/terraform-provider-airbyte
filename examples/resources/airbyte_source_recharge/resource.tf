resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = false
  }
  definition_id = "b8975147-c3e6-4c8b-91cc-cad3b1c40652"
  name          = "Earl Bins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "648ca783-b586-4523-84bd-b821f9c8efa4"
}