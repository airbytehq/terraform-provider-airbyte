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
  definition_id = "98fe3f92-c06a-49aa-b270-2875abb88c39"
  name          = "Marcos Kuhic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "66080f3e-cae3-4cb4-91ea-7992cd63d338"
}