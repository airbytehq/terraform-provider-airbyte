resource "airbyte_source_datadog" "my_source_datadog" {
  configuration = {
    api_key                 = "...my_api_key..."
    application_key         = "...my_application_key..."
    end_date                = "2022-10-01T00:00:00Z"
    max_records_per_request = 4
    queries = [
      {
        data_source = "rum"
        name        = "Alicia Jakubowski"
        query       = "...my_query..."
      },
    ]
    query      = "...my_query..."
    site       = "ddog-gov.com"
    start_date = "2022-10-01T00:00:00Z"
  }
  definition_id = "14094639-cf5d-4d4a-8c05-f536f6b9b8b8"
  name          = "Sidney Ziemann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fbf365d6-87e0-487e-b905-b6a417faeb4f"
}