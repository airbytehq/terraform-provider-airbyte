resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "c3156b2f-fd5d-46c6-9da5-497add71ffde"
  name          = "Herman Lesch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "09709edc-ef2c-4435-be7e-b149e6fe9a76"
}