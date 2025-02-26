resource "airbyte_source_workday" "my_source_workday" {
  configuration = {
    credentials = {
      report_based_streams = {
        password = "...my_password..."
        report_ids = [
          "{ \"see\": \"documentation\" }"
        ]
        username = "...my_username..."
      }
      restapi_streams = {
        access_token = "...my_access_token..."
        start_date   = "2024-10-26T07:00:00.000Z"
      }
    }
    host      = "...my_host..."
    tenant_id = "...my_tenant_id..."
  }
  definition_id = "caf3b67e-129c-4e9e-a530-2b6adcf4997d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "40a9f4d4-7bdd-4a7c-90bb-08fd63077df2"
}