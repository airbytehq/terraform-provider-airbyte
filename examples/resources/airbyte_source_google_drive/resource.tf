resource "airbyte_source_google_drive" "my_source_googledrive" {
  configuration = {
    credentials = {
      service_account_key_authentication = {
        service_account_info = "...my_service_account_info..."
      }
    }
    delivery_method = {
      replicate_records = {
        # ...
      }
    }
    folder_url = "https://drive.google.com/drive/folders/1Xaz0vXXXX2enKnNYU5qSt9NS70gvMyYn"
    start_date = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 4
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "...my_name..."
        primary_key                                 = "...my_primary_key..."
        recent_n_files_to_read_for_schema_discovery = 6
        schemaless                                  = false
        use_first_found_file_for_schema_discovery   = true
        validation_policy                           = "Wait for Discover"
      }
    ]
  }
  definition_id = "dabf0c27-e2bf-4270-bf90-ad35112231f8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "30ad3d09-6bd9-4a3c-8f7f-71bcb2227e8f"
}