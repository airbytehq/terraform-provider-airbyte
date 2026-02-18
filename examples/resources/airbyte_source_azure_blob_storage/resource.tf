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
        preserve_directory_structure = false
      }
    }
    start_date = "2021-01-01"
    streams = [
      {
        days_to_sync_if_history_is_full = 1
        format = {
          excel_format = {
            # ...
          }
          jsonl_format = {
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
        schemaless                                  = true
        use_first_found_file_for_schema_discovery   = false
        validation_policy                           = "Wait for Discover"
      }
    ]
  }
  definition_id = "3385920f-d837-42e0-b72d-7927f28bf9f2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2c3aeaad-c70f-44a8-a981-aca12752c864"
}