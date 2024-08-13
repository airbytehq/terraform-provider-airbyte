resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "e4749058-8d0e-4293-9574-a681eea74b87"
  name          = "Harold Willms IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7d33223d-80bb-4993-a2d2-f45974a2ebc3"
}