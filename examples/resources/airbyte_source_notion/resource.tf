resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "6e00b415-b02e-4160-bf02-58176a0ae687"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a587cc09-e865-4a1d-86a5-7693ad0a9192"
}