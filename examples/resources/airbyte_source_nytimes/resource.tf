resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-08"
    period     = "1"
    share_type = "facebook"
    start_date = "1851-01"
  }
  definition_id = "a1c7d433-20fa-4c9c-9a8d-ab7e73a59718"
  name          = "Suzanne Terry"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c1f633ab-c58a-4542-9517-fc88bc4998d7"
}