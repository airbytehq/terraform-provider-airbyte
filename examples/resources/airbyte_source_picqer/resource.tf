resource "airbyte_source_picqer" "my_source_picqer" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    organization_name     = "...my_organization_name..."
    password              = "...my_password..."
    start_date            = "2022-04-01T06:59:07.291Z"
    username              = "...my_username..."
  }
  definition_id = "860ca029-c88c-4c0a-a7d8-08ce6e84729c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "015e53d9-d9fd-4cc8-b48d-77a211e84c79"
}