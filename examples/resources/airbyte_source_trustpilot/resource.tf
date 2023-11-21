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
  definition_id = "5fa64aee-8d2b-4de4-8eef-ceb9e0d54b08"
  name          = "Clifford Quigley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "98fe3f92-c06a-49aa-b270-2875abb88c39"
}