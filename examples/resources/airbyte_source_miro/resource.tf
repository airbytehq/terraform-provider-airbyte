resource "airbyte_source_miro" "my_source_miro" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "d69f6337-9370-49bd-8810-c7618fc0cb70"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9b7812ca-1031-4ac5-825e-f20bc9529c43"
}