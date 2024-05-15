resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  definition_id = "46209ea5-2c70-47cb-85c4-a8d21cf34658"
  name          = "Dr. Zachary Cronin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "54a56730-9cc0-4ee4-bba7-faed572054da"
}