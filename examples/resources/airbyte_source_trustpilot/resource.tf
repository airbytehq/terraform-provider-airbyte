resource "airbyte_source_trustpilot" "my_source_trustpilot" {
  configuration = {
    business_units = [
      "...",
    ]
    credentials = {
      source_trustpilot_authorization_method_api_key = {
        auth_type = "apikey"
        client_id = "...my_client_id..."
      }
    }
    source_type = "trustpilot"
    start_date  = "%Y-%m-%dT%H:%M:%S"
  }
  name         = "Betty Jast"
  secret_id    = "...my_secret_id..."
  workspace_id = "5894ea76-3d5c-4727-95b7-85148d6d549e"
}