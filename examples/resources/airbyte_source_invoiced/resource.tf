resource "airbyte_source_invoiced" "my_source_invoiced" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "f06a5062-07d1-4016-b605-f224622540b5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d9c50b50-3323-48eb-9d22-b9752b6cfaf4"
}