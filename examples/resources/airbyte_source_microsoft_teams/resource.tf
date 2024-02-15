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
  definition_id = "74976dbe-116c-4781-96c7-0bfb32667c47"
  name          = "Derek Bauch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "16107c03-f839-4206-b4c9-db1c42670928"
}