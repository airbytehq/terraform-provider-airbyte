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
  definition_id = "8f7b837d-76b0-42a3-9797-c2fd02395071"
  name          = "Ms. Melody Dach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8fda8b48-bf3f-40e9-a31e-bcafaa2ee7a1"
}