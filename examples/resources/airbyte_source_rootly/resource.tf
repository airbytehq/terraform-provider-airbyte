resource "airbyte_source_rootly" "my_source_rootly" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-12-01T23:35:04.737Z"
  }
  definition_id = "01babc36-0067-4c21-b3d6-3d2c2351d667"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "608b15f0-56a5-4aa1-ac20-3a2801c30ba9"
}