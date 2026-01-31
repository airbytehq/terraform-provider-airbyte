resource "airbyte_source_piwik" "my_source_piwik" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    organization_id       = "...my_organization_id..."
  }
  definition_id = "addbeea5-c67a-4e6e-b5b6-74ff4f3f0966"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "82fd1468-136a-41cf-b115-faefb31130c1"
}