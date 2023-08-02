resource "airbyte_source_sftp" "my_source_sftp" {
    configuration = {
        credentials =     {
                auth_method = "SSH_PASSWORD_AUTH"
                auth_user_password = "...my_auth_user_password..."
            }
        file_pattern = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
        file_types = "csv"
        folder_path = "/logs/2022"
        host = "192.0.2.1"
        port = 22
        source_type = "sftp"
        user = "...my_user..."
    }
            name = "Earl Osinski"
            workspace_id = "75c6c1fe-606d-407d-aa9c-87ae50c16661"
        }