resource "airbyte_source_microsoft_teams" "my_source_microsoftteams" {
  configuration = {
    credentials = {
      source_microsoft_teams_authentication_mechanism_authenticate_via_microsoft = {
        auth_type     = "Token"
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    period      = "D7"
    source_type = "microsoft-teams"
  }
  name         = "Noah Bernier"
  secret_id    = "...my_secret_id..."
  workspace_id = "7097b5da-08c5-47fa-ac78-a216e19bafec"
}