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
  definition_id = "4cd0d539-af23-419a-af88-98d74d7cd067"
  name          = "Lola Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "633751f6-c544-4c20-a73f-23dc46e62d66"
}