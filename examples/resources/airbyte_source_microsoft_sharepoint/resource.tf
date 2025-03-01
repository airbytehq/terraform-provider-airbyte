resource "airbyte_source_microsoft_sharepoint" "my_source_microsoftsharepoint" {
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
    delivery_method = {
      copy_raw_files = {
        preserve_directory_structure = false
      }
      replicate_records = {
        # ...
      }
    }
    folder_path  = "...my_folder_path..."
    search_scope = "ALL"
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 0
        format = {
          avro_format = {
            double_as_string = false
          }
          csv_format = {
            delimiter    = "...my_delimiter..."
            double_quote = false
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
            skip_rows_after_header  = 4
            skip_rows_before_header = 3
            strings_can_be_null     = false
            true_values = [
              "..."
            ]
          }
          excel_format = {
            # ...
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
            strategy                 = "auto"
          }
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "...my_name..."
        recent_n_files_to_read_for_schema_discovery = 7
        schemaless                                  = true
        validation_policy                           = "Skip Record"
      }
    ]
  }
  definition_id = "8120bea0-1e02-41bc-80a8-406f7b21913d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "27c9b886-94de-4d83-9b82-5954db7af16b"
}