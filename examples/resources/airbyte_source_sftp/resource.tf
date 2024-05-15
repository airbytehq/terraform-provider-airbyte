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
    host         = "www.host.com"
    port         = 22
    user         = "...my_user..."
  }
  definition_id = "d5db92d1-6e1d-4cb0-afc1-f7a171f7c1d8"
  name          = "Santos Streich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "09b9a903-f60e-4b4a-94b7-cf533c55d68a"
}