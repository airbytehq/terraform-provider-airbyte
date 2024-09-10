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
  definition_id = "b03b315a-f19b-4c4a-9418-c27e2e49fbe8"
  name          = "Stella Hammes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "48e30ccc-b1d3-49dd-bc64-9b7a58a56364"
}