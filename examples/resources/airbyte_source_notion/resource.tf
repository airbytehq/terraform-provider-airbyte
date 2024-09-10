resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "8b38fe3b-5201-4125-b292-52a784d2d0f1"
  name          = "Sharon Koss"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5e2d6a49-780b-4a1d-aa28-c6eefe59b72d"
}