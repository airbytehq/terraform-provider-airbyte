resource "airbyte_source_datadog" "my_source_datadog" {
  configuration = {
    api_key                 = "...my_api_key..."
    application_key         = "...my_application_key..."
    end_date                = "2022-10-01T00:00:00Z"
    max_records_per_request = 2
    queries = [
      {
        data_source = "rum"
        name        = "Ms. Paul Beer"
        query       = "...my_query..."
      },
    ]
    query      = "...my_query..."
    site       = "datadoghq.eu"
    start_date = "2022-10-01T00:00:00Z"
  }
  definition_id = "ef770c81-f95c-45b8-9d2d-32b37f6fec5c"
  name          = "Thomas O'Conner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "da52f695-43b8-4620-99bb-50480aaaf77a"
}