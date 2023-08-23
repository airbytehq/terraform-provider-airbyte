resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key     = "...my_api_key..."
    interval    = "quarter"
    source_type = "chartmogul"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Mr. Kristopher Torphy"
  secret_id    = "...my_secret_id..."
  workspace_id = "0ce2169e-5100-419c-adc5-e34762799bfb"
}