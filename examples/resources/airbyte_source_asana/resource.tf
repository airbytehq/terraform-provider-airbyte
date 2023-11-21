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
  definition_id = "f5896557-ce17-4ccd-ab10-d6388d4fdfb9"
  name          = "Ms. Irvin Anderson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c04191be-b057-4f07-8546-621bdba90354"
}