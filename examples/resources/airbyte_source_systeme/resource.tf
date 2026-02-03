resource "airbyte_source_systeme" "my_source_systeme" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "1a8f2c45-b7ec-4db1-8680-d2e228b3d43e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de6ea042-7883-4cc3-9786-89e9d969aa09"
}