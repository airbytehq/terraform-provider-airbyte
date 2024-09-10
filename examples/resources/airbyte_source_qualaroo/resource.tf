resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  definition_id = "cde039dd-5e8c-4577-8ddd-10910de87dfe"
  name          = "Elizabeth Bruen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bd0d10cf-57eb-4672-b8aa-55d63fb2a63d"
}