resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "2e88fa20-a2f6-43cc-bba6-98a0a3f244fb"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "dd7935ae-8b5a-4a08-9b6e-acdf3ba41ffd"
}