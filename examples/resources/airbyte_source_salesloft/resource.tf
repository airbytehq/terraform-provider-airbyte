resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "db2efb21-ef2b-4c48-bf07-f2e772136664"
  name          = "Elisa Nienow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2db7532b-28cb-4785-b8d4-ad9bb4c2d04c"
}