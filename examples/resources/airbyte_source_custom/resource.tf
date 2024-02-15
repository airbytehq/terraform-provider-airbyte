resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "ec345b5c-1bae-4747-a6a8-cd9c5aad47af"
  name          = "Dr. Dana Botsford Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d002e1c7-3f9b-4a1e-b9a6-3be209caa593"
}