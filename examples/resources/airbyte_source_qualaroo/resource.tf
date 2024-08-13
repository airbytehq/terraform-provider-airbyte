resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  definition_id = "2799cad5-c4b8-4334-a9d3-410e395a0aac"
  name          = "Beatrice Stamm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d0978821-4279-492f-a5a7-105f2e570ad3"
}