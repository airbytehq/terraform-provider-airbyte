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
  definition_id = "196ea920-3cb7-4876-a75a-531f3b4802a3"
  name          = "Terrence Smith"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4976dbe1-16c7-4811-ac70-bfb32667c47d"
}