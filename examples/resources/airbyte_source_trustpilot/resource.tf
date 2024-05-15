resource "airbyte_source_trustpilot" "my_source_trustpilot" {
  configuration = {
    business_units = [
      "...",
    ]
    credentials = {
      api_key = {
        client_id = "...my_client_id..."
      }
    }
    start_date = "%Y-%m-%dT%H:%M:%S"
  }
  definition_id = "48acadc0-6400-4b7b-98d1-3a2ccf2b1ade"
  name          = "Ollie Gleason"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4bfb0e1b-3d2b-489b-a6a8-838cf8d227f3"
}