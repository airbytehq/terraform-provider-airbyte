resource "airbyte_source_sftp_bulk" "my_source_sftpbulk" {
  configuration = {
    file_most_recent = false
    file_pattern     = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
    file_type        = "json"
    folder_path      = "/logs/2022"
    host             = "192.0.2.1"
    password         = "...my_password..."
    port             = 22
    private_key      = "...my_private_key..."
    separator        = ","
    source_type      = "sftp-bulk"
    start_date       = "2017-01-25T00:00:00Z"
    stream_name      = "ftp_contacts"
    username         = "Pearline_Bailey"
  }
  name         = "Wm Bartoletti"
  secret_id    = "...my_secret_id..."
  workspace_id = "50edf22a-94d2-40ec-90ea-41d1f465e851"
}