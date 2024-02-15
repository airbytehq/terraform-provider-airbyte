resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Agustin14"
  }
  definition_id = "a47524bb-490a-4a75-bad1-1902ba188860"
  name          = "Sylvia Bode"
  workspace_id  = "193af491-985c-492d-b3ca-e7edb401c239"
}