resource "airbyte_source_zendesk_sell" "my_source_zendesksell" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "f23yhd630otl94y85a8bf384958473pto95847fd006da49382716or937ruw059"
  }
  definition_id = "43444ae3-c4d7-4ddd-b041-16568664ae67"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c70b3642-a94d-47c1-a413-9a6ecf389ac3"
}