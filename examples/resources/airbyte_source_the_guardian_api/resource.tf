resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "environment AND NOT water"
    section    = "housing-network"
    start_date = "YYYY-MM-DD"
    tag        = "environment/energyefficiency"
  }
  definition_id = "338f3228-56cd-488e-be49-4b9e5830e9ef"
  name          = "Mr. Timmy Gutkowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dcae9f85-c701-4738-8526-f8856cdf3fde"
}