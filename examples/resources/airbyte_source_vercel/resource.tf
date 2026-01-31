resource "airbyte_source_vercel" "my_source_vercel" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "2021-04-17T18:08:46.962Z"
  }
  definition_id = "7299d215-e496-4a35-ab85-b826b98c42f3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fbf8de8f-babe-44d9-ad1c-6b6c3e15e8a5"
}