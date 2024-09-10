resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "amusement park"
    section    = "housing-network"
    start_date = "YYYY-MM-DD"
    tag        = "environment/recycling"
  }
  definition_id = "a23b3c01-3462-4186-acf5-18dbd5ebee01"
  name          = "Sonja Abshire"
  secret_id     = "...my_secret_id..."
  workspace_id  = "adc6f53d-253d-4b8b-9e39-d437be8f4cf7"
}