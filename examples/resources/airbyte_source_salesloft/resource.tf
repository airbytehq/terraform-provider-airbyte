resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "b6d0d209-32d7-4e88-9861-9ec39811786e"
  name          = "Darlene Vandervort"
  secret_id     = "...my_secret_id..."
  workspace_id  = "72c20971-d544-4a65-a7d2-b4609d4ec646"
}