resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "d842954b-d759-4bdc-8b93-f80b7f557094"
  name          = "Enrique Kovacek"
  secret_id     = "...my_secret_id..."
  workspace_id  = "356d5339-1630-4fd2-b131-d4fbef253f33"
}