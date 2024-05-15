resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "3c351689-ddb3-4b3d-b401-39dc2cf2cb41"
  name          = "Bertha Haag"
  secret_id     = "...my_secret_id..."
  workspace_id  = "85f5b638-2e70-4e18-a817-2f932271c9f9"
}