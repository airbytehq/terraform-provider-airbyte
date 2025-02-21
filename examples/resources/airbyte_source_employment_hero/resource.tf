resource "airbyte_source_employment_hero" "my_source_employmenthero" {
  configuration = {
    api_key = "...my_api_key..."
    employees_configids = [
      "{ \"see\": \"documentation\" }"
    ]
    organization_configids = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "54254f99-ed6c-4422-81b7-0e169eed9efe"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "192c755c-19a3-4708-9bc6-03c6dcfb7dfb"
}