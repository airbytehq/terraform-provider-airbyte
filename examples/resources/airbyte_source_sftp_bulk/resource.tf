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
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema                                = "...my_input_schema..."
        legacy_prefix                               = "...my_legacy_prefix..."
        name                                        = "Tony Collier"
        primary_key                                 = "...my_primary_key..."
        recent_n_files_to_read_for_schema_discovery = 4
        schemaless                                  = true
        validation_policy                           = "Wait for Discover"
      },
    ]
    username = "Santos_Leuschke"
  }
  definition_id = "7e494b9e-5830-4e9e-bbf4-12cdcae9f85c"
  name          = "Maria Bernhard"
  secret_id     = "...my_secret_id..."
  workspace_id  = "80526f88-56cd-4f3f-9efb-e1999214f3ff"
}