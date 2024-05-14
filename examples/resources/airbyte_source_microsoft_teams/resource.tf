resource "airbyte_source_microsoft_teams" "my_source_microsoftteams" {
  configuration = {
    credentials = {
      authenticate_via_microsoft = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    period = "D7"
  }
  definition_id = "b49c82f2-83fd-4f1b-b62a-3ef9cacc879b"
  name          = "Darren Muller Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "647dc7c2-71c5-4044-a25a-4f7e4eabe3a9"
}