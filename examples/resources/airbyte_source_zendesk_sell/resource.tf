resource "airbyte_source_zendesk_sell" "my_source_zendesksell" {
  configuration = {
    api_token = "f23yhd630otl94y85a8bf384958473pto95847fd006da49382716or937ruw059"
  }
  definition_id = "66cf518d-bd5e-4bee-814e-07eadc6f53d2"
  name          = "Shannon Schuster"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b1e39d43-7be8-4f4c-b797-fa8ae012beba"
}