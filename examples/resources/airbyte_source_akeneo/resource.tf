resource "airbyte_source_akeneo" "my_source_akeneo" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_username          = "...my_api_username..."
    client_id             = "...my_client_id..."
    host                  = "...my_host..."
    password              = "...my_password..."
    secret                = "...my_secret..."
  }
  definition_id = "7519fd4e-17d3-4271-9f11-299d8ef6d0a9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "164dcd88-da10-41d6-af56-d411693bb1e5"
}