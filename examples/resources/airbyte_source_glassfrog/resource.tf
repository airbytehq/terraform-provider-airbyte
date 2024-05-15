resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "fc803c83-11a9-47a1-ae89-49629432a02c"
  name          = "Doug Rowe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7e017f90-52f2-4040-a069-282dd6a12cb0"
}