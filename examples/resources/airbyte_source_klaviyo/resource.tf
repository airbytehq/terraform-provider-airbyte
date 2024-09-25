resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key                               = "...my_api_key..."
    disable_fetching_predictive_analytics = false
    start_date                            = "2017-01-25T00:00:00Z"
  }
  definition_id = "e4dc1f63-3abc-458a-942d-517fc88bc499"
  name          = "Al Kling"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fedea337-d55b-4155-98db-92c72d541f53"
}