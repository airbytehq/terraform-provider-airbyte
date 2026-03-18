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
        recent_n_files_to_read_for_schema_discovery = 6
        schemaless                                  = false
        use_first_found_file_for_schema_discovery   = false
        validation_policy                           = "Emit Record"
      }
    ]
  }
  definition_id = "2a8c41ae-8c23-4be0-a73f-2ab10ca1a820"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d3d2617-b7bf-4f1a-9c4e-25756fd184ac"
}