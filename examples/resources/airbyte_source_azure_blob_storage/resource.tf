resource "airbyte_source_azure_blob_storage" "my_source_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_name   = "airbyte5storage"
    azure_blob_storage_container_name = "airbytetescontainername"
    azure_blob_storage_endpoint       = "blob.core.windows.net"
    credentials = {
      authenticate_via_storage_account_key = {
        azure_blob_storage_account_key = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
      }
    }
    start_date = "2021-01-01T00:00:00.000000Z"
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
              "..."
            ]
            header_definition = {
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
            skip_rows_after_header  = 5
            skip_rows_before_header = 0
            strings_can_be_null     = true
            true_values = [
              "..."
            ]
          }
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "...my_name..."
        recent_n_files_to_read_for_schema_discovery = 2
        schemaless                                  = true
        validation_policy                           = "Wait for Discover"
      }
    ]
  }
  definition_id = "3385920f-d837-42e0-b72d-7927f28bf9f2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2c3aeaad-c70f-44a8-a981-aca12752c864"
}