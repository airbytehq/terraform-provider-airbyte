resource "airbyte_source_nexiopay" "my_source_nexiopay" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-10-16T13:12:44.319Z"
    subdomain             = "nexiopaysandbox"
    username              = "...my_username..."
  }
  definition_id = "0517c8ef-e855-4228-a872-19b7b8bcb58e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bf8814ee-e167-4057-9b87-27c892c0a02e"
}