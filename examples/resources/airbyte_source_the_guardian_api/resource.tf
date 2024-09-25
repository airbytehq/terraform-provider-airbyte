resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "environment AND political"
    section    = "technology"
    start_date = "YYYY-MM-DD"
    tag        = "environment/recycling"
  }
  definition_id = "7e848040-b9f1-4499-9ddb-8a59a67c83fd"
  name          = "Duane Sporer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0b32fa02-e1c3-46ea-ae2a-493453ab987b"
}