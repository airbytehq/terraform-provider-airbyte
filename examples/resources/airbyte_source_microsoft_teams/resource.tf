resource "airbyte_source_microsoft_teams" "my_source_microsoftteams" {
  configuration = {
    credentials = {
      auth_type     = "Token"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      tenant_id     = "...my_tenant_id..."
    }
    period      = "D7"
    source_type = "microsoft-teams"
  }
  name         = "Veronica Abshire"
  workspace_id = "1f176445-6379-4f3f-b27e-21f862657b36"
}