resource "airbyte_source_zendesk_sell" "my_source_zendesksell" {
  configuration = {
    api_token = "f23yhd630otl94y85a8bf384958473pto95847fd006da49382716or937ruw059"
  }
  definition_id = "a87a42ab-f6ae-4578-82da-a821998eac75"
  name          = "Dr. Kristin Runolfsson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8d41f294-78bd-4831-a4ca-f6a030f2320a"
}