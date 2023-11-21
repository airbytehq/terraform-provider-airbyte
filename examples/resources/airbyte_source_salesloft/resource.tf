resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "c073abf4-dfeb-4d41-8e5a-603e6b3fca03"
  name          = "Terrance Corwin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "14510264-179a-4403-81bb-87b13a43b1ea"
}