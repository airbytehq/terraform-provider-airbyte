resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "...my_username..."
  }
  definition_id = "0c8fa949-f25a-4a4d-a64e-1f825a21e3bd"
  name          = "...my_name..."
  workspace_id  = "ab73fdf5-b478-44fc-996e-1ac739d8b9d4"
}