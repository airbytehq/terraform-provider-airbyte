resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "93eb1144-8c1c-4d3a-be5e-f85381e22d9f"
  name          = "Henry Price Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "24121e63-15be-4306-a4e8-3994413a7c75"
}