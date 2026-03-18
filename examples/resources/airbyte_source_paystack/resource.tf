resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    lookback_window_days  = 0
    secret_key            = "...my_secret_key..."
    start_date            = "2017-01-25T00:00:00Z"
  }
  definition_id = "193bdcb8-1dd9-48d1-aade-91cadfd74f9b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5a30bba7-5a9d-42c9-9fda-cdb85117ad00"
}