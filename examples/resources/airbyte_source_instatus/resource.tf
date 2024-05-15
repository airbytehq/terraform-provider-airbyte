resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "bbdb3119-64f9-49d6-b745-afb65f1720bd"
  name          = "Harriet Kiehn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "19162647-e680-4e44-97c6-f4b509c8206a"
}