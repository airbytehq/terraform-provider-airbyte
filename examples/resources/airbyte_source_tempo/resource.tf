resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "141de445-d2eb-471d-b063-3b2c09c05846"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b1cfbd4-e84b-4c48-9a44-c2e985ba6e1b"
}