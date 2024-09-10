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
    start_date = "%Y-%m-%dT%H:%M:%SZ"
  }
  definition_id = "992622de-7b1a-493e-9915-fe5844c8d7f9"
  name          = "Reginald Kreiger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "df74d23a-87a4-42ab-b6ae-57802daa8219"
}