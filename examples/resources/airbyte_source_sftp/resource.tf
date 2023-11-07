resource "airbyte_source_sftp" "my_source_sftp" {
  configuration = {
    credentials = {
      source_sftp_password_authentication = {
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
  name         = "Bertha Williamson"
  secret_id    = "...my_secret_id..."
  workspace_id = "4145562d-2757-4623-9e52-bb8adc8fd2a7"
}