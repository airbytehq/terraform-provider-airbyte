resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token              = "...my_access_token..."
    start_date                = "2021-05-14T00:00:00Z"
    use_orders_deprecated_api = true
  }
  definition_id = "0fcbe7d2-d343-43ea-8627-99cad5c4b833"
  name          = "Willie Marquardt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "410e395a-0aac-455d-89d0-978821427992"
}