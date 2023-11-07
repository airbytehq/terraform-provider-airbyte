resource "airbyte_source_trustpilot" "my_source_trustpilot" {
  configuration = {
    business_units = [
      "...",
    ]
    credentials = {
      source_trustpilot_api_key = {
        client_id = "...my_client_id..."
      }
    }
    start_date = "%Y-%m-%dT%H:%M:%S"
  }
  name         = "Miss Tony Schimmel"
  secret_id    = "...my_secret_id..."
  workspace_id = "98dd5412-2565-4139-b61b-0488926ab9cf"
}