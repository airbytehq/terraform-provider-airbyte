resource "airbyte_source_convertkit" "my_source_convertkit" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_secret            = "...my_api_secret..."
    credentials = {
      api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2022-04-08T08:41:42.142Z"
  }
  definition_id = "49884a66-f571-4d5d-b133-9542868ade4d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "77c64299-e674-4669-8cbe-7d4ab77892df"
}