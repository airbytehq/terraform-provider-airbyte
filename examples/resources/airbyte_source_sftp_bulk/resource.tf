resource "airbyte_source_sftp_bulk" "my_source_sftpbulk" {
  configuration = {
    file_most_recent = true
    file_pattern     = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
    file_type        = "json"
    folder_path      = "/logs/2022"
    host             = "www.host.com"
    password         = "...my_password..."
    port             = 22
    private_key      = "...my_private_key..."
    separator        = ","
    start_date       = "2017-01-25T00:00:00Z"
    stream_name      = "ftp_contacts"
    username         = "Olin92"
  }
  name         = "Marie Johns"
  secret_id    = "...my_secret_id..."
  workspace_id = "f8929e4d-23a0-40b4-94f7-d68d64a810b2"
}