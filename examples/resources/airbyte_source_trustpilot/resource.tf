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
  name         = "Bradley Goodwin"
  secret_id    = "...my_secret_id..."
  workspace_id = "f5c84383-6b86-4b3c-9f64-15b0449f9df1"
}