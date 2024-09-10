resource "airbyte_source_calendly" "my_source_calendly" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-09-12T17:45:07.121Z"
  }
  definition_id = "ebc3680a-bb37-46bc-a66a-7c0ce20da3e9"
  name          = "Donnie Price II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "54cb2418-93e1-4da4-ac4f-685d205011b8"
}