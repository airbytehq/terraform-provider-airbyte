resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key                               = "...my_api_key..."
    disable_fetching_predictive_analytics = true
    start_date                            = "2017-01-25T00:00:00Z"
  }
  definition_id = "14160113-c2d3-4cb5-aaa6-4b86a42dbbb8"
  name          = "Rosa VonRueden"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b5e6a18b-0d79-4003-9e8d-a443bfaadd29"
}