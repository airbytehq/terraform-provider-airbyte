resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "environment AND NOT water"
    section    = "media"
    start_date = "YYYY-MM-DD"
    tag        = "environment/energyefficiency"
  }
  definition_id = "9efbf412-cdca-4e9f-85c7-017380526f88"
  name          = "Laurie Schiller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3fdefbe1-9992-414f-bffa-48acadc06400"
}