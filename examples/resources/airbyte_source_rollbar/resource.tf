resource "airbyte_source_rollbar" "my_source_rollbar" {
  configuration = {
    account_access_token  = "...my_account_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    project_access_token  = "...my_project_access_token..."
    start_date            = "2022-09-20T11:27:18.642Z"
  }
  definition_id = "426504bb-5bb9-490a-9b4d-4bbfe4324584"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "42be0db2-a152-4027-a103-e5e0ac5819d4"
}