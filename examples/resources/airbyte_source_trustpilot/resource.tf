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
  definition_id = "a76308e2-8188-410e-b61b-40ea12469466"
  name          = "Crystal Rutherford"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f85dbdf8-ab2f-4267-87a5-b6047904d383"
}