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
        days_to_sync_if_history_is_full = 5
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
        name              = "Dustin Schulist"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Wait for Discover"
      },
    ]
    username = "Arnold.Jacobi83"
  }
  definition_id = "cb06fc1f-7a17-41f7-81d8-bfddb09b9a90"
  name          = "Dr. Lela Kautzer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4a54b7cf-533c-455d-a8a5-6e1f7b10c6dd"
}