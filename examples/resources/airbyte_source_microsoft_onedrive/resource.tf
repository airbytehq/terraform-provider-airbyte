resource "airbyte_source_microsoft_onedrive" "my_source_microsoftonedrive" {
  configuration = {
    credentials = {
      authenticate_via_microsoft_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
        tenant_id     = "...my_tenant_id..."
      }
      service_key_authentication = {
        client_id           = "...my_client_id..."
        client_secret       = "...my_client_secret..."
        tenant_id           = "...my_tenant_id..."
        user_principal_name = "...my_user_principal_name..."
      }
    }
    drive_name   = "...my_drive_name..."
    folder_path  = "...my_folder_path..."
    search_scope = "SHARED_ITEMS"
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 4
        format = {
          avro_format = {
            double_as_string = true
          }
          csv_format = {
            delimiter    = "...my_delimiter..."
            double_quote = true
            encoding     = "...my_encoding..."
            escape_char  = "...my_escape_char..."
            false_values = [
              "..."
            ]
            header_definition = {
              autogenerated = {
                # ...
              }
              from_csv = {
                # ...
              }
              user_provided = {
                column_names = [
                  "..."
                ]
              }
            }
            ignore_errors_on_fields_mismatch = false
            null_values = [
              "..."
            ]
            quote_char              = "...my_quote_char..."
            skip_rows_after_header  = 0
            skip_rows_before_header = 10
            strings_can_be_null     = true
            true_values = [
              "..."
            ]
          }
          jsonl_format = {
            # ...
          }
          parquet_format = {
            decimal_as_float = true
          }
          unstructured_document_format = {
            processing = {
              local = {
                # ...
              }
            }
            skip_unprocessable_files = true
            strategy                 = "ocr_only"
          }
        }
        globs = [
          "..."
        ]
        input_schema      = "...my_input_schema..."
        name              = "...my_name..."
        schemaless        = false
        validation_policy = "Skip Record"
      }
    ]
  }
  definition_id = "fab9fabf-8a74-4f68-9a9b-c2101751a272"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5f69d7b2-0503-4a25-b763-9376e9939f76"
}