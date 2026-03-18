resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "...my_username..."
  }
  definition_id = "e9810f61-4bab-46d2-bb22-edfc902e0644"
  name          = "...my_name..."
  workspace_id  = "ab73fdf5-b478-44fc-996e-1ac739d8b9d4"
}