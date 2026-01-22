resource "airbyte_source_bunny_inc" "my_source_bunnyinc" {
  configuration = {
    apikey     = "...my_apikey..."
    start_date = "2022-08-26T03:34:30.047Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "78267fea-7309-46f2-92ea-b46b31fe0e8d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5754212-9126-4098-80cb-b5315a603e73"
}