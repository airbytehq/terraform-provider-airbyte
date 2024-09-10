resource "airbyte_source_datadog" "my_source_datadog" {
  configuration = {
    api_key                 = "...my_api_key..."
    application_key         = "...my_application_key..."
    end_date                = "2022-10-01T00:00:00Z"
    max_records_per_request = 4
    queries = [
      {
        data_source = "rum"
        name        = "Miss Carolyn MacGyver"
        query       = "...my_query..."
      },
    ]
    query      = "...my_query..."
    site       = "us5.datadoghq.com"
    start_date = "2022-10-01T00:00:00Z"
  }
  definition_id = "cf1afcf9-4e3c-479c-beca-1c7573a5bbba"
  name          = "Howard Stoltenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0a2cef78-1247-45bc-a9a4-804a9e0ddc31"
}