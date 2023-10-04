resource "airbyte_source_microsoft_teams" "my_source_microsoftteams" {
  configuration = {
    credentials = {
      source_microsoft_teams_authentication_mechanism_authenticate_via_microsoft = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    period = "D7"
  }
  name         = "Randall Wunsch"
  secret_id    = "...my_secret_id..."
  workspace_id = "b7e8dc37-1ecb-4ee1-8511-b439ed171c9d"
}