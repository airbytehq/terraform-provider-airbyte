resource "airbyte_source_microsoft_teams" "my_source_microsoftteams" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      authenticate_via_microsoft = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    period = "D7"
  }
  definition_id = "eaf50f04-21dd-4620-913b-2a83f5635227"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5bc16313-0df8-4b0a-937a-7ae3de2c21ca"
}