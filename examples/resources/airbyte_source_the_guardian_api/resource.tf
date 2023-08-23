resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "YYYY-MM-DD"
    query       = "environment AND political"
    section     = "technology"
    source_type = "the-guardian-api"
    start_date  = "YYYY-MM-DD"
    tag         = "environment/recycling"
  }
  name         = "Arturo Fay"
  secret_id    = "...my_secret_id..."
  workspace_id = "4c0252fe-3b4b-44db-8b77-8ebb6e1d2cf5"
}