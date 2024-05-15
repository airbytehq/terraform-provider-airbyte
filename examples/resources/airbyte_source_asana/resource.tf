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
  definition_id = "668105e1-180f-4b2a-875a-1ca190e95bd1"
  name          = "Mattie Cormier IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb0af63d-efa7-4335-af39-bea5e2089f0e"
}