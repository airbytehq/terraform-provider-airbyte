resource "airbyte_source_datadog" "my_source_datadog" {
  configuration = {
    additional_properties   = "{ \"see\": \"documentation\" }"
    api_key                 = "...my_api_key..."
    application_key         = "...my_application_key..."
    end_date                = "2022-10-01T00:00:00Z"
    max_records_per_request = 2070
    queries = [
      {
        data_source = "rum"
        name        = "...my_name..."
        query       = "...my_query..."
      }
    ]
    query      = "...my_query..."
    site       = "us3.datadoghq.com"
    start_date = "2022-10-01T00:00:00Z"
  }
  definition_id = "2540902d-96ce-424c-aecb-6e08ce06d99a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de17fce0-44d9-442c-bb38-b8bd289009e8"
}