resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "environment AND political"
    section    = "technology"
    start_date = "YYYY-MM-DD"
    tag        = "environment/energyefficiency"
  }
  name         = "Grant Gerhold I"
  secret_id    = "...my_secret_id..."
  workspace_id = "7442775e-d080-474e-97a6-4885711ab94f"
}