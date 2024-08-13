resource "airbyte_source_zendesk_sell" "my_source_zendesksell" {
  configuration = {
    api_token = "f23yhd630otl94y85a8bf384958473pto95847fd006da49382716or937ruw059"
  }
  definition_id = "4aee427f-93df-49bf-84b7-84edaaf2f424"
  name          = "Ms. Marcos Ebert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "06f09926-22de-47b1-a93e-5915fe5844c8"
}