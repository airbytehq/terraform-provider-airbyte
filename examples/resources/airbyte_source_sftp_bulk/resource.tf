resource "airbyte_source_sftp_bulk" "my_source_sftpbulk" {
  configuration = {
    credentials = {
      authenticate_via_password = {
        password = "...my_password..."
      }
    }
    folder_path = "/logs/2022"
    host        = "www.host.com"
    port        = 22
    start_date  = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 2
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Rene Kunze Jr."
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Emit Record"
      },
    ]
    username = "Rose_Abshire56"
  }
  definition_id = "1eaa4a70-c9cb-4870-ab98-050c39e74506"
  name          = "Marlene Reichel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1cb4db2a-ae6c-420a-89c1-9db3e1c883c5"
}