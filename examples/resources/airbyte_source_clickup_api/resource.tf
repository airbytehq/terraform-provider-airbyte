resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    include_closed_tasks = false
  }
  definition_id = "5800594f-bd86-4631-8cac-e02f96b83355"
  name          = "Dixie Kessler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "181b36cf-1afc-4f94-a3c7-9cbeca1c7573"
}