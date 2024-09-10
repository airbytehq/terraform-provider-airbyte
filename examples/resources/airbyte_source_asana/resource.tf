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
  definition_id = "f007bc04-191b-4eb0-97f0-7c546621bdba"
  name          = "Robert Feeney"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f51ed0a8-181e-46e5-9fd9-ebe7b2f5ca6e"
}