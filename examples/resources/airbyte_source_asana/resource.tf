resource "airbyte_source_asana" "my_source_asana" {
  configuration = {
    credentials = {
      authenticate_via_asana_oauth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
      authenticate_with_personal_access_token = {
        personal_access_token = "...my_personal_access_token..."
      }
    }
    organization_export_ids = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "190f0a64-da8f-4fe0-96fe-8f093bde58b4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "04d30e4f-141a-4d2b-bfba-3940b90ad598"
}