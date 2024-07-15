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
        days_to_sync_if_history_is_full = 8
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Jamie Swaniawski"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Wait for Discover"
      },
    ]
    username = "Milford_Weissnat"
  }
  definition_id = "24f5b116-4e1d-4c4a-81d4-4fb97610a4d0"
  name          = "Dr. Caleb Mann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4a70c9c-b870-4eb9-8050-c39e7450657b"
}