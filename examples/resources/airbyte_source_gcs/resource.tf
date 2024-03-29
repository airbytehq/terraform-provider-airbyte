resource "airbyte_source_gcs" "my_source_gcs" {
  configuration = {
    bucket          = "...my_bucket..."
    service_account = "...my_service_account..."
    start_date      = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 9
        format = {
          csv_format = {
            delimiter    = "...my_delimiter..."
            double_quote = false
            encoding     = "...my_encoding..."
            escape_char  = "...my_escape_char..."
            false_values = [
              "...",
            ]
            header_definition = {
              autogenerated = {}
            }
            inference_type = "None"
            null_values = [
              "...",
            ]
            quote_char              = "...my_quote_char..."
            skip_rows_after_header  = 10
            skip_rows_before_header = 10
            strings_can_be_null     = false
            true_values = [
              "...",
            ]
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Oscar Runolfsson"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Wait for Discover"
      },
    ]
  }
  definition_id = "695e2f08-eb76-4e35-9cef-20de4cfc332b"
  name          = "Jacqueline Sawayn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd8bc607-6e71-44fb-b0cf-d3aed54ef24d"
}