resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    destination_type = "sftp-json"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Virginie_Bergnaum67"
  }
  name         = "Shannon Lind"
  workspace_id = "2beb4773-73c8-4d72-b64d-1db1f2c43106"
}