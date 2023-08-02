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
  name         = "Stephanie Yundt"
  secret_id    = "...my_secretId..."
  workspace_id = "2657b36f-c6b9-4f58-bce5-25c67641a831"
}