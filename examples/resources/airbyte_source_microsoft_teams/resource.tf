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
  definition_id = "369b1ff5-a7ba-4288-b10a-0635ff19f388"
  name          = "Margie Heidenreich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "941e7db0-723f-4947-b9cc-80ee5b712257"
}