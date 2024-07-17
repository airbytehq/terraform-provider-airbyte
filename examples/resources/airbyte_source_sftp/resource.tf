resource "airbyte_source_sftp" "my_source_sftp" {
  configuration = {
    credentials = {
      password_authentication = {
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
  definition_id = "08d9d001-7533-4842-9733-72c40ec92913"
  name          = "Gladys Zemlak"
  secret_id     = "...my_secret_id..."
  workspace_id  = "49bcc34d-389b-4bf5-924f-5b1164e1dc4a"
}