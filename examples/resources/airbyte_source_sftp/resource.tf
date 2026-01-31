resource "airbyte_source_sftp" "my_source_sftp" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
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
  definition_id = "ef03926e-13cb-4929-aa6b-e7c8e1b0c80e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de2e80b4-0898-4bea-821b-cb0c33f06888"
}