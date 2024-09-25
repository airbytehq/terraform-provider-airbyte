resource "airbyte_source_sftp_bulk" "my_source_sftpbulk" {
  configuration = {
    credentials = {
      authenticate_via_password = {
        password = "...my_password..."
      }
    }
    folder_path = "/logs/2022"
    host        = "192.0.2.1"
    port        = 22
    start_date  = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 9
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "Blanche MacGyver"
        recent_n_files_to_read_for_schema_discovery = 2
        schemaless                                  = false
        validation_policy                           = "Wait for Discover"
      },
    ]
    username = "Matt_Wilkinson"
  }
  definition_id = "e57802da-a821-4998-aac7-526c0e68d41f"
  name          = "Misty Gibson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bd831a4c-af6a-4030-b232-0a84c82feed3"
}