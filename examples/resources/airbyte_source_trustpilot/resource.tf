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
  definition_id = "d2bde48e-efce-4b9e-8d54-b0894bdd98fe"
  name          = "Lucia McClure"
  secret_id     = "...my_secret_id..."
  workspace_id  = "06a9aa72-7028-475a-bb88-c398d7966608"
}