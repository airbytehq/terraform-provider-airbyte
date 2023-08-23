resource "airbyte_source_datadog" "my_source_datadog" {
  configuration = {
    api_key                 = "...my_api_key..."
    application_key         = "...my_application_key..."
    end_date                = "2022-10-01T00:00:00Z"
    max_records_per_request = 8
    queries = [
      {
        data_source = "rum"
        name        = "Marshall McClure"
        query       = "...my_query..."
      },
    ]
    query       = "...my_query..."
    site        = "us5.datadoghq.com"
    source_type = "datadog"
    start_date  = "2022-10-01T00:00:00Z"
  }
  name         = "Wilbert Bashirian"
  secret_id    = "...my_secret_id..."
  workspace_id = "dce10873-e42b-4006-9678-878ba8581a58"
}