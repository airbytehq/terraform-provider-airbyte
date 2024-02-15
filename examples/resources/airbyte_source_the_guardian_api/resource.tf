resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "political"
    section    = "housing-network"
    start_date = "YYYY-MM-DD"
    tag        = "environment/recycling"
  }
  definition_id = "b1ade2f4-984b-4fb0-a1b3-d2b89b26a883"
  name          = "Delbert Zemlak"
  secret_id     = "...my_secret_id..."
  workspace_id  = "227f318d-4240-4654-b478-2740a2b5a462"
}