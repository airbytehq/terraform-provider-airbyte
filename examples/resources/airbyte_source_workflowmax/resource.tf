resource "airbyte_source_workflowmax" "my_source_workflowmax" {
  configuration = {
    account_id = "...my_account_id..."
    api_key_2  = "...my_api_key_2..."
    start_date = "2021-02-08T01:00:08.372Z"
  }
  definition_id = "2f97a487-5e7f-4c06-a18d-9452ad404e1a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2255f267-e121-4b6b-b5aa-8af1b4d8068e"
}