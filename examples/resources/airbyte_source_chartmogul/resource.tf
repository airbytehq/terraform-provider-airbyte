resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "ed171c9d-9f9b-4478-bac2-32bfa41c80b2"
  name          = "Lillian Grimes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "949a9555-9f5a-434f-b680-c88d8e9f7431"
}