resource "airbyte_source_chameleon" "my_source_chameleon" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2022-10-06T08:02:50.190Z"
    filter                = "tour"
    limit                 = "50"
    start_date            = "2020-01-18T12:12:48.535Z"
  }
  definition_id = "64a0240a-81a4-4e40-8002-e063b17cfbbe"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a1dd99e9-8adf-428a-ac07-dc3083920806"
}