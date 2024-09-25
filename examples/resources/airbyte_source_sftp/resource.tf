resource "airbyte_source_sftp" "my_source_sftp" {
  configuration = {
    credentials = {
      password_authentication = {
        auth_user_password = "...my_auth_user_password..."
      }
    }
    file_pattern = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
    file_types   = "csv"
    folder_path  = "/logs/2022"
    host         = "192.0.2.1"
    port         = 22
    user         = "...my_user..."
  }
  definition_id = "df9bf84b-784e-4daa-b2f4-24ed308606f0"
  name          = "Wendell Dare"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2de7b1a9-3e59-415f-a584-4c8d7f9e67ba"
}