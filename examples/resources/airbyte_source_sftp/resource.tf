resource "airbyte_source_sftp" "my_source_sftp" {
  configuration = {
    credentials = {
      source_sftp_password_authentication = {
        auth_user_password = "...my_auth_user_password..."
      }
    }
    file_pattern = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
    file_types   = "csv,json"
    folder_path  = "/logs/2022"
    host         = "192.0.2.1"
    port         = 22
    user         = "...my_user..."
  }
  definition_id = "8a56e1f7-b10c-46dd-9e62-eb5fcf365dcc"
  name          = "Rogelio Schoen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e41cbe1d-2ecd-4015-81d5-2f6c56d3cf89"
}