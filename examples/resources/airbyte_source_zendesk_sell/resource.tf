resource "airbyte_source_zendesk_sell" "my_source_zendesksell" {
  configuration = {
    api_token = "f23yhd630otl94y85a8bf384958473pto95847fd006da49382716or937ruw059"
  }
  definition_id = "2fa90b3f-c58a-4ed9-a63e-07de9609725c"
  name          = "Nadine Hane"
  secret_id     = "...my_secret_id..."
  workspace_id  = "da35039f-4e40-498b-b8c2-a23b3c013462"
}