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
  definition_id = "2ba7d43d-20d3-4384-a15e-d53522788fae"
  name          = "Ed Ondricka"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b93c7728-79b6-4069-b6a2-8df3196ea920"
}