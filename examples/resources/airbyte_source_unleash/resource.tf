resource "airbyte_source_unleash" "my_source_unleash" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "project:environment.be44368985f7fb3237c584ef86f3d6bdada42ddbd63a019d26955178"
    api_url               = "...my_api_url..."
    nameprefix            = "...my_nameprefix..."
    project_name          = "...my_project_name..."
  }
  definition_id = "6888cec3-c77f-42ae-92a4-31df920982a3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "42a458da-b1aa-4372-ad2a-7c80419e5bac"
}