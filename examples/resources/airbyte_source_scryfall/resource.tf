resource "airbyte_source_scryfall" "my_source_scryfall" {
  configuration = {}
  definition_id = "4523f36d-ab51-4228-90f3-e992c2a3f4c8"
  name          = "Earnest Baumbach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c7cc4eaf-dab4-4c1b-8af6-6c12869f984d"
}