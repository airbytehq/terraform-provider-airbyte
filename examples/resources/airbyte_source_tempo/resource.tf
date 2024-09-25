resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "e5a5b3df-80e8-47ac-88d7-3096598895bd"
  name          = "Miss Kurt Larkin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d18174b5-fdf3-4211-b15e-0b967ac0fe88"
}