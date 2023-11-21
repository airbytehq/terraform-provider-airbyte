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
  definition_id = "79345d14-4630-4331-8f29-cf10b0742b93"
  name          = "Jesus Marquardt Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1a320cca-d5ad-4c13-b0ef-57488395b5ae"
}