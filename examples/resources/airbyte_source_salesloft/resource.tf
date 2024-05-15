resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "b06d3b49-9dcb-4dae-b4af-cb0631840729"
  name          = "Clara Goldner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b8965caa-babe-4e9d-a378-e7243c021bc0"
}