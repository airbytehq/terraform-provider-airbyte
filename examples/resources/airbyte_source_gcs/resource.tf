resource "airbyte_source_gcs" "my_source_gcs" {
  configuration = {
    bucket          = "...my_bucket..."
    service_account = "...my_service_account..."
    start_date      = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 1
        format = {
          csv_format = {
            delimiter    = "...my_delimiter..."
            double_quote = true
            encoding     = "...my_encoding..."
            escape_char  = "...my_escape_char..."
            false_values = [
              "...",
            ]
            header_definition = {
              autogenerated = {}
            }
            ignore_errors_on_fields_mismatch = true
            inference_type                   = "None"
            null_values = [
              "...",
            ]
            quote_char              = "...my_quote_char..."
            skip_rows_after_header  = 4
            skip_rows_before_header = 10
            strings_can_be_null     = true
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
        name              = "Robert Franey"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "1a97a1ae-8949-4629-832a-02ceacfe7e01"
  name          = "Mrs. Tabitha Moen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f2040e06-9282-4dd6-a12c-b01cbd9faeed"
}