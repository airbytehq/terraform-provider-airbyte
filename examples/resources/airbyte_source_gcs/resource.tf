resource "airbyte_source_gcs" "my_source_gcs" {
  configuration = {
    bucket = "...my_bucket..."
    credentials = {
      service_account_authentication = {
        service_account = "...my_service_account..."
      }
    }
    delivery_method = {
      copy_raw_files = {
        preserve_directory_structure = false
      }
    }
    start_date = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 6
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
        recent_n_files_to_read_for_schema_discovery = 6
        schemaless                                  = false
        use_first_found_file_for_schema_discovery   = false
        validation_policy                           = "Wait for Discover"
      }
    ]
  }
  definition_id = "9b2af220-0694-476e-aec8-441217b74908"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d3d2617-b7bf-4f1a-9c4e-25756fd184ac"
}