resource "airbyte_source_microsoft_teams" "my_source_microsoftteams" {
  configuration = {
    credentials = {
      authenticate_via_microsoft = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        tenant_id     = "...my_tenant_id..."
      }
      authenticate_via_microsoft_o_auth20 = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    period = "D7"
  }
  definition_id = "9c7c92b5-c652-4363-8342-1deb8b5e46f4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5bc16313-0df8-4b0a-937a-7ae3de2c21ca"
}