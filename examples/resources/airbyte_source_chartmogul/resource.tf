resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    interval   = "week"
    start_date = "2017-01-25T00:00:00Z"
  }
  name         = "Tyler Lind"
  secret_id    = "...my_secret_id..."
  workspace_id = "dc13c292-fcfa-4b73-b9ba-5d3045674ad2"
}