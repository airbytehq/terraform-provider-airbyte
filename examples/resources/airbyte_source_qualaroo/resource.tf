resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key         = "...my_key..."
    source_type = "qualaroo"
    start_date  = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  name         = "Sue Thompson"
  secret_id    = "...my_secret_id..."
  workspace_id = "b518c4da-1fad-4355-92f0-6d4e5b72f0f5"
}