resource "airbyte_source_clockodo" "my_source_clockodo" {
  configuration = {
    api_key              = "...my_api_key..."
    email_address        = "...my_email_address..."
    external_application = "...my_external_application..."
    start_date           = "2022-08-30T23:32:03.943Z"
    years = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "a9559a11-7233-4025-9dc0-3212f03ceb1d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "11979c58-601e-4fdb-8b08-8c747f00b5a3"
}