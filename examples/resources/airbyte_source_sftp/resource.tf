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
  definition_id = "6c56d3cf-89e6-4921-8e0c-7a6ecf05091d"
  name          = "Jason Lebsack"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d0017533-8429-4733-b2c4-0ec9291353f9"
}