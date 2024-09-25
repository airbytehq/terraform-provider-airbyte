resource "airbyte_source_asana" "my_source_asana" {
  configuration = {
    credentials = {
      authenticate_via_asana_oauth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    organization_export_ids = [
      "{ \"see\": \"documentation\" }",
    ]
  }
  definition_id = "92fd4888-7cb1-49c4-8ec8-b4573d66d007"
  name          = "Derek Crist"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e4396e74-03ea-42d5-8959-a4fa50e807c8"
}