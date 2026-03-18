resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "da9fc6b9-8059-4be0-b204-f56e22e4d52d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7cafe10c-cd2c-48b6-9513-98d0b725b65b"
}