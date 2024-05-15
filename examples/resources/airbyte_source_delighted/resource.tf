resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30T04:50:23Z"
  }
  definition_id = "14094639-cf5d-4d4a-8c05-f536f6b9b8b8"
  name          = "Sidney Ziemann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fbf365d6-87e0-487e-b905-b6a417faeb4f"
}