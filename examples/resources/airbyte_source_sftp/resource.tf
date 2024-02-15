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
  definition_id = "0c9cb870-eb98-4050-839e-7450657bfd1c"
  name          = "Jesus Schultz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aae6c20a-c9c1-49db-be1c-883c55acce5c"
}