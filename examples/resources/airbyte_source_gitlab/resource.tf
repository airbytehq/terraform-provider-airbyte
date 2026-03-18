resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_url               = "gitlab.com"
    credentials = {
      private_token = {
        access_token = "...my_access_token..."
      }
    }
    groups = "airbyte.io"
    groups_list = [
      "..."
    ]
    projects = "airbyte.io/documentation"
    projects_list = [
      "..."
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "5e6175e5-68e1-4c17-bff9-56103bbb0d80"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ba2d75f3-474c-4f0b-8254-abc13264e426"
}