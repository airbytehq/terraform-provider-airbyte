resource "airbyte_source_sftp" "my_source_sftp" {
  configuration = {
    credentials = {
      source_sftp_authentication_wildcard_password_authentication = {
        auth_method        = "SSH_PASSWORD_AUTH"
        auth_user_password = "...my_auth_user_password..."
      }
    }
    file_pattern = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
    file_types   = "csv,json"
    folder_path  = "/logs/2022"
    host         = "192.0.2.1"
    port         = 22
    source_type  = "sftp"
    user         = "...my_user..."
  }
  name         = "Dorothy Waters"
  secret_id    = "...my_secret_id..."
  workspace_id = "22a94d20-ec90-4ea4-9d1f-465e85156fff"
}