resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 9
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "cf34658e-520f-4854-a567-309cc0ee4bba"
  name          = "Shari Orn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "572054da-a84a-44e2-8fea-10a8a64b77a4"
}