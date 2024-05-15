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
        days_to_sync_if_history_is_full = 10
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
        name              = "Henry Bahringer"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Wait for Discover"
      },
    ]
    username = "Bianka.Toy"
  }
  definition_id = "eb5fcf36-5dcc-4aec-ace4-1cbe1d2ecd01"
  name          = "Angela Boehm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2f6c56d3-cf89-4e69-a1ce-0c7a6ecf0509"
}