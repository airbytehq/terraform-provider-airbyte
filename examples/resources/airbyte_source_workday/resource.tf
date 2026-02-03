resource "airbyte_source_workday" "my_source_workday" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      password = "...my_password..."
      username = "...my_username..."
    }
    host        = "...my_host..."
    num_workers = 1
    report_ids = [
      {
        report_id = "...my_report_id..."
      }
    ]
    tenant_id = "...my_tenant_id..."
  }
  definition_id = "caf3b67e-129c-4e9e-a530-2b6adcf4997d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "40a9f4d4-7bdd-4a7c-90bb-08fd63077df2"
}