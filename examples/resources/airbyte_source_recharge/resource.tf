resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = false
  }
  definition_id = "648ca783-b586-4523-84bd-b821f9c8efa4"
  name          = "Christie Schiller IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c50e6f12-11e1-4fcb-a6b9-0cc0df941919"
}