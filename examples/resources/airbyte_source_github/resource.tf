resource "airbyte_source_github" "my_source_github" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_url               = "https://github.com"
    branch                = "airbytehq/airbyte/master airbytehq/airbyte/my-branch"
    branches = [
      "..."
    ]
    credentials = {
      personal_access_token = {
        personal_access_token = "...my_personal_access_token..."
      }
    }
    max_waiting_time = 10
    repositories = [
      "..."
    ]
    repository = "airbytehq/airbyte airbytehq/another-repo"
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "eed1fe5e-7311-4b8b-9ce8-186629287c2f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8cc76dd7-521b-4116-ab6d-3a729514b42f"
}