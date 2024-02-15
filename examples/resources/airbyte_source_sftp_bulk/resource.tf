resource "airbyte_source_sftp_bulk" "my_source_sftpbulk" {
  configuration = {
    file_most_recent = true
    file_pattern     = "log-([0-9]{4})([0-9]{2})([0-9]{2}) - This will filter files which  `log-yearmmdd`"
    file_type        = "csv"
    folder_path      = "/logs/2022"
    host             = "www.host.com"
    password         = "...my_password..."
    port             = 22
    private_key      = "...my_private_key..."
    separator        = ","
    start_date       = "2017-01-25T00:00:00Z"
    stream_name      = "ftp_contacts"
    username         = "Blair.Hermiston42"
  }
  definition_id = "062a63f5-716d-42b2-a5f2-af56fce7bdd5"
  name          = "Jerry Pfannerstill"
  secret_id     = "...my_secret_id..."
  workspace_id  = "487876fc-ad61-45bc-ace6-87b337106698"
}