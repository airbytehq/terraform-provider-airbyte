resource "airbyte_source_sftp_bulk" "my_source_sftpbulk" {
  configuration = {
    file_most_recent = false
    file_pattern     = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
    file_type        = "csv"
    folder_path      = "/logs/2022"
    host             = "192.0.2.1"
    password         = "...my_password..."
    port             = 22
    private_key      = "...my_private_key..."
    separator        = ","
    start_date       = "2017-01-25T00:00:00Z"
    stream_name      = "ftp_contacts"
    username         = "Serena.Beer65"
  }
  definition_id = "6ecf0509-1d90-48d9-9001-753384297337"
  name          = "Dr. Jasmine Grimes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9291353f-9549-4bcc-b4d3-89bbf5d24f5b"
}