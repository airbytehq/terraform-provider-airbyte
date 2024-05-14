resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = false
  }
  definition_id = "4daa84a4-e28f-4ea1-8a8a-64b77a4fe630"
  name          = "Faye Cruickshank"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c95001e5-15b2-4e74-8522-a67dad65e8ae"
}