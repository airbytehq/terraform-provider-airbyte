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
  definition_id = "8e7e494b-9e58-430e-9efb-f412cdcae9f8"
  name          = "Mr. Francis Klein"
  secret_id     = "...my_secret_id..."
  workspace_id  = "380526f8-856c-4df3-bdef-be1999214f3f"
}