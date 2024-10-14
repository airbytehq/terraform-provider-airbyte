resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "063814f9-3c20-4353-a737-cad7f488e17b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a850da6c-caed-476f-96c7-110c17210796"
}