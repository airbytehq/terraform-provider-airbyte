resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "87a1fb18-7d33-4223-980b-b99362d2f459"
  name          = "Monica Pagac"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bc3680ab-b376-4bce-a6a7-c0ce20da3e9a"
}