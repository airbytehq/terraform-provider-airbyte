resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    lookback_window_days  = 7
    secret_key            = "...my_secret_key..."
    start_date            = "2017-01-25T00:00:00Z"
  }
  definition_id = "d064f44a-5875-4cf2-8a32-a321d2eb3460"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5a30bba7-5a9d-42c9-9fda-cdb85117ad00"
}