resource "airbyte_source_workday_rest" "my_source_workdayrest" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      access_token = "...my_access_token..."
    }
    host        = "...my_host..."
    num_workers = 1
    start_date  = "2024-10-26T07:00:00.000Z"
    tenant_id   = "...my_tenant_id..."
  }
  definition_id = "a463e053-6736-48cc-a82c-c29583625222"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e08a39fb-12b0-442b-9037-6d49cec8a2ce"
}