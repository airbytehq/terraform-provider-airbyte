resource "airbyte_source_sftp_bulk" "my_source_sftpbulk" {
  configuration = {
    credentials = {
      authenticate_via_password = {
        password = "...my_password..."
      }
    }
    delivery_method = {
      replicate_records = {
        # ...
      }
    }
    folder_path = "/logs/2022"
    host        = "www.host.com"
    port        = 22
    start_date  = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 5
        format = {
          # ...
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        legacy_prefix                               = "...my_legacy_prefix..."
        name                                        = "...my_name..."
        primary_key                                 = "...my_primary_key..."
        recent_n_files_to_read_for_schema_discovery = 4
        schemaless                                  = false
        use_first_found_file_for_schema_discovery   = true
        validation_policy                           = "Skip Record"
      }
    ]
    username = "...my_username..."
  }
  definition_id = "68ea307f-7d93-44b6-91fe-f4681001bb74"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec1a23b7-466d-4987-acf2-eae96eb456d0"
}