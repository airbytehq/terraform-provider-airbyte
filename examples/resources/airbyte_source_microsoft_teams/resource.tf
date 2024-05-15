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
  definition_id = "68e79345-d144-4630-b318-f29cf10b0742"
  name          = "Alejandro Dietrich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "99111a32-0cca-4d5a-9c13-30ef57488395"
}