resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "environment AND political"
    section    = "media"
    start_date = "YYYY-MM-DD"
    tag        = "environment/energyefficiency"
  }
  definition_id = "e21a7b03-b315-4af1-9bc4-a1418c27e2e4"
  name          = "Toby Rempel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4753d48e-30cc-4cb1-939d-dfc649b7a58a"
}