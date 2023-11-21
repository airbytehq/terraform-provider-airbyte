resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 9
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "5b489304-8e9c-41af-9961-b1c883a57271"
  name          = "Kari Lemke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b6433cb8-2b32-4ad0-bfd9-a9d8ba9b0df8"
}