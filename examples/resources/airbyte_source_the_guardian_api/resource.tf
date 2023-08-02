resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "YYYY-MM-DD"
    query       = "environment AND political"
    section     = "housing-network"
    source_type = "the-guardian-api"
    start_date  = "YYYY-MM-DD"
    tag         = "environment/recycling"
  }
  name         = "Jeremy Pfeffer"
  secret_id    = "...my_secretId..."
  workspace_id = "34f02449-d86f-44bb-a0fe-5d911cbfe749"
}