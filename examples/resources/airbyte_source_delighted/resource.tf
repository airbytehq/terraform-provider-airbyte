resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30T04:50:23Z"
  }
  definition_id = "a2c2618f-e1b9-41dc-8e8e-649d7675fb58"
  name          = "Rachel Champlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6a8ac655-36a2-405f-9e4d-309ea5800594"
}