resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  name         = "Rosalie Hoppe"
  secret_id    = "...my_secret_id..."
  workspace_id = "e2f08eb7-6e35-41ce-b20d-e4cfc332b42c"
}