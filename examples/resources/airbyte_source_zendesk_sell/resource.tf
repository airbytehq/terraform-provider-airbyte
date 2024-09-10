resource "airbyte_source_zendesk_sell" "my_source_zendesksell" {
  configuration = {
    api_token = "f23yhd630otl94y85a8bf384958473pto95847fd006da49382716or937ruw059"
  }
  definition_id = "95489f10-b55b-4793-92be-b1b52fdccb22"
  name          = "Ernest Weimann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f127a6aa-10ba-476f-bfe0-de8798ad00b4"
}