resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    destination_type = "sftp-json"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Dayton98"
  }
  name         = "Terence Beer"
  workspace_id = "71778ff6-1d01-4747-a360-a15db6a66065"
}