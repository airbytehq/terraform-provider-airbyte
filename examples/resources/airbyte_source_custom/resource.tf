resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "e4c19596-433e-41d5-9484-aac586d05524"
  name          = "Lynne Hartmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b457a2c-2618-4fe1-b91d-cce8e649d767"
}