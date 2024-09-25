resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  definition_id = "92aaeb21-d89b-43db-958d-4aa1770fe21a"
  name          = "Susie Aufderhar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "315af19b-c4a1-4418-827e-2e49fbe84753"
}