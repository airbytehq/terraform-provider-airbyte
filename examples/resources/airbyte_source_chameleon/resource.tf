resource "airbyte_source_chameleon" "my_source_chameleon" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2022-10-06T08:02:50.190Z"
    filter                = "launcher"
    limit                 = "...my_limit..."
    start_date            = "2020-01-18T12:12:48.535Z"
  }
  definition_id = "5cbe19ca-55b1-46e7-9f3a-468d4b26f900"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a1dd99e9-8adf-428a-ac07-dc3083920806"
}