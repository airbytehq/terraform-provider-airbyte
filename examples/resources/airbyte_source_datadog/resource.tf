resource "airbyte_source_datadog" "my_source_datadog" {
  configuration = {
    additional_properties   = "{ \"see\": \"documentation\" }"
    api_key                 = "...my_api_key..."
    application_key         = "...my_application_key..."
    end_date                = "2022-10-01T00:00:00Z"
    max_records_per_request = 5000
    queries = [
      {
        data_source = "rum"
        name        = "...my_name..."
        query       = "...my_query..."
      }
    ]
    query      = "...my_query..."
    site       = "datadoghq.com"
    start_date = "2022-10-01T00:00:00Z"
  }
  definition_id = "1cfc30c7-82db-43f4-9fd7-ac1b42312cda"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de17fce0-44d9-442c-bb38-b8bd289009e8"
}