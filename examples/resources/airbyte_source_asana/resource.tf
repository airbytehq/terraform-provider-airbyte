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
    test_mode = false
  }
  definition_id = "3b9184ca-c7dc-4ada-9293-8da5765e7880"
  name          = "Matthew Bednar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0ddef9a9-0fa7-4f8f-841b-58dfc559a0be"
}