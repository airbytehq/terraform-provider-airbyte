resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  definition_id = "2a67dad6-5e8a-4e1d-a17c-0fcbe7d2d343"
  name          = "Jana O'Hara"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2799cad5-c4b8-4334-a9d3-410e395a0aac"
}