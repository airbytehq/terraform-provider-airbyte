resource "airbyte_source_zendesk_sell" "my_source_zendesksell" {
  configuration = {
    api_token = "f23yhd630otl94y85a8bf384958473pto95847fd006da49382716or937ruw059"
  }
  definition_id = "e10f99e0-0879-4e49-884a-7485520644ae"
  name          = "Francis Daniel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "93df9bf8-4b78-44ed-aaf2-f424ed308606"
}