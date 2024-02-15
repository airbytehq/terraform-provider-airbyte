resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "myaccount.freshdesk.com"
    requests_per_minute = 7
    start_date          = "2020-12-01T00:00:00Z"
  }
  definition_id = "6d7c2fca-a386-4da1-92dd-f0351c49c686"
  name          = "Robert Abernathy III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "41425e4d-38a3-40ea-96cd-fa27fbf6225b"
}