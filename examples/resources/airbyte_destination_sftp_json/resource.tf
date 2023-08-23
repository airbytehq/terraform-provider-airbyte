resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    destination_type = "sftp-json"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Lane.Schuster"
  }
  name         = "Ruth Zulauf"
  workspace_id = "7bfaad4f-9efc-41b4-912c-1032648dc2f6"
}