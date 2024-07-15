resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "1a3541ba-6f5d-490d-9a8a-349e2072bdff"
  name          = "Carole Buckridge"
  secret_id     = "...my_secret_id..."
  workspace_id  = "be50fcb3-2a78-4173-abb8-2e6a7189e925"
}