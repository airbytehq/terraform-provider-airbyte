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
    test_mode = true
  }
  definition_id = "f2233892-0422-4616-84e7-3ef602c915f5"
  name          = "Ron Schimmel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "896557ce-17cc-4d6b-90d6-388d4fdfb9af"
}