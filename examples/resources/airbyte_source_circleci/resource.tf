resource "airbyte_source_circleci" "my_source_circleci" {
  configuration = {
    api_key    = "...my_api_key..."
    job_number = "...my_job_number..."
    org_id     = "...my_org_id..."
    project_id = "...my_project_id..."
    start_date = "2021-12-24T02:44:42.906Z"
    workflow_id = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "53783c47-5321-4ea7-8d4a-f5c8e6914d08"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bcfd7b44-f6fc-40b7-b657-769d9b08d9e7"
}