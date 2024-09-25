resource "airbyte_source_bitly" "my_source_bitly" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2020-03-15T22:28:02.457Z"
    start_date = "2022-12-31T11:13:32.886Z"
  }
  definition_id = "da3e9aab-7145-44cb-a418-93e1da46c4f6"
  name          = "Mr. Roberto Stokes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "011b8862-473b-4757-b910-8618e91445d8"
}