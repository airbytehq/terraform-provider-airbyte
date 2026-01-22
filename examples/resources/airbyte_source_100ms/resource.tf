resource "airbyte_source_100ms" "my_source_100ms" {
  configuration = {
    management_token = "...my_management_token..."
    start_date       = "2022-11-22T02:34:03.658Z"
  }
  definition_id = "bb04b785-72d4-4912-b99a-842d651c7483"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "af1e095b-0c19-4bf9-8572-83505f91877b"
}