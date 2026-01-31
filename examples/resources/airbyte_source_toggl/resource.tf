resource "airbyte_source_toggl" "my_source_toggl" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    end_date              = "YYYY-MM-DD"
    organization_id       = 7
    start_date            = "YYYY-MM-DD"
    workspace_id          = 3
  }
  definition_id = "5a734240-3b38-447c-94cf-7f78c764bdbe"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6a95d581-a8d4-4c54-8218-1af6e73e44ad"
}