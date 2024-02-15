resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "cc6e7e95-c9a7-4c9f-9975-11d624796585"
  name          = "Mr. Sonia Hilll MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ad5e5f9c-fb0d-41e8-93ac-ce90aeed1087"
}