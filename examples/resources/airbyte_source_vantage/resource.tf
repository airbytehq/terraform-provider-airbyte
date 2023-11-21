resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "5e9c61e2-0db5-4f4b-b11c-60c3a7ba3362"
  name          = "Tracey Rippin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5dfad932-4f6a-4b9f-8334-526eae71eb75"
}