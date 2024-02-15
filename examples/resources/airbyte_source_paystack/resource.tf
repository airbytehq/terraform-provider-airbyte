resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 9
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "1df09849-375f-4622-b890-d41f13919c92"
  name          = "Alexis Dickens"
  secret_id     = "...my_secret_id..."
  workspace_id  = "517a8011-2166-4a5e-846f-2bce2e77bbcc"
}