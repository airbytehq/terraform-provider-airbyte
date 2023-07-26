resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "YYYY-MM-DD"
    query       = "environment AND political"
    section     = "housing-network"
    source_type = "the-guardian-api"
    start_date  = "YYYY-MM-DD"
    tag         = "environment/plasticbags"
  }
  name         = "Jerome Heaney"
  workspace_id = "13e13a48-2310-4907-bd35-4c092bd734f0"
}