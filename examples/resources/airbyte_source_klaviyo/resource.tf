resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    additional_properties                 = "{ \"see\": \"documentation\" }"
    api_key                               = "...my_api_key..."
    disable_fetching_predictive_analytics = true
    lookback_window                       = 0
    metric_ids                            = "RESQ6t"
    num_workers                           = 1
    start_date                            = "2017-01-25T00:00:00Z"
  }
  definition_id = "95e8cffd-b8c4-4039-968e-d32fb4a69bde"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2b8b9017-7907-4706-8721-11272beb5dbf"
}