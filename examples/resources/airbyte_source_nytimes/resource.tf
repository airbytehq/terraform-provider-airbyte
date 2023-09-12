resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "1851-01"
    period      = "7"
    share_type  = "facebook"
    source_type = "nytimes"
    start_date  = "2022-08"
  }
  name         = "Mr. Emily Macejkovic"
  secret_id    = "...my_secret_id..."
  workspace_id = "4fe44472-97cd-43b1-9d3b-bce247b7684e"
}