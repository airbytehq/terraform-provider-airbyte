resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "542dff28-ff35-4067-b75b-e0658aab8a8f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0dfd0bfe-6e77-4725-b2d3-cf8a98202e5e"
}