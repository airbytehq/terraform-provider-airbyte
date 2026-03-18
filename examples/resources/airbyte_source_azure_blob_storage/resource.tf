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
    delivery_method = {
      copy_raw_files = {
        preserve_directory_structure = true
      }
    }
    start_date = "2021-01-01"
    streams = [
      {
        days_to_sync_if_history_is_full = 3
        format = {
          excel_format = {
            # ...
          }
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        legacy_prefix                               = "...my_legacy_prefix..."
        name                                        = "...my_name..."
        primary_key                                 = "...my_primary_key..."
        recent_n_files_to_read_for_schema_discovery = 2
        schemaless                                  = false
        use_first_found_file_for_schema_discovery   = false
        validation_policy                           = "Emit Record"
      }
    ]
  }
  definition_id = "fdaaba68-4875-4ed9-8fcd-4ae1e0a25093"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2c3aeaad-c70f-44a8-a981-aca12752c864"
}