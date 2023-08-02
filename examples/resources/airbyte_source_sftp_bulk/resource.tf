resource "airbyte_source_sftp_bulk" "my_source_sftpbulk" {
  configuration = {
    file_most_recent = false
    file_pattern     = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
    file_type        = "csv"
    folder_path      = "/logs/2022"
    host             = "www.host.com"
    password         = "...my_password..."
    port             = 22
    private_key      = "...my_private_key..."
    separator        = ","
    source_type      = "sftp-bulk"
    start_date       = "2017-01-25T00:00:00Z"
    stream_name      = "ftp_contacts"
    username         = "Yasmine.Baumbach"
  }
  name         = "Nichole Treutel"
  secret_id    = "...my_secretId..."
  workspace_id = "ada29ca7-9181-4c95-a716-63c530b56651"
}