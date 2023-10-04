resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Christop6"
  }
  name         = "Matthew Friesen"
  workspace_id = "78c254cd-184f-4d11-ae75-f1c50c9ec767"
}