resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "f900f8cf-e737-48a5-8770-22972e237ec3"
  name          = "Jesse O'Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "198d2efe-5e34-4c93-9e7a-72ef9ee22c4d"
}