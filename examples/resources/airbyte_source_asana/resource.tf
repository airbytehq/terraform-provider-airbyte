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
  definition_id = "0de16b8d-a7b8-4143-b851-cf99c7fd70e5"
  name          = "Esther Heaney"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cf4f6487-4e62-4c58-9879-2fd48887cb19"
}