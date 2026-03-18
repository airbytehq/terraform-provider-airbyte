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
    start_date = "2021-01-01"
    streams = [
      {
        days_to_sync_if_history_is_full = 3
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
        use_first_found_file_for_schema_discovery   = false
        validation_policy                           = "Emit Record"
      }
    ]
  }
  definition_id = "9f8dda77-1048-4368-815b-269bf54ee9b8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "30ad3d09-6bd9-4a3c-8f7f-71bcb2227e8f"
}