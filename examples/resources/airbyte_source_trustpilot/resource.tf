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
  name         = "Marco Hudson PhD"
  secret_id    = "...my_secretId..."
  workspace_id = "2cf502ba-fb2c-4bc4-a35d-5e65da028c3e"
}