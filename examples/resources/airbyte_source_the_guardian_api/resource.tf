resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "YYYY-MM-DD"
    query       = "political"
    section     = "media"
    source_type = "the-guardian-api"
    start_date  = "YYYY-MM-DD"
    tag         = "environment/recycling"
  }
  name         = "Pauline Kozey IV"
  secret_id    = "...my_secret_id..."
  workspace_id = "2b94f2ab-1fd5-4671-a9c3-26350a467143"
}