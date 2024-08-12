resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Araceli.Kiehn85"
  }
  definition_id = "5b00289a-0dc0-4232-9a5c-ae9f3888495e"
  name          = "Dr. Bennie Cassin"
  workspace_id  = "b305f362-4c43-4900-b25f-a3e33722ced9"
}