resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Deshawn10"
  }
  definition_id = "846ef364-4196-4a04-bb96-66e7d15e7eed"
  name          = "Frederick Howell"
  workspace_id  = "586b689f-dc13-4c29-afcf-ab73b9ba5d30"
}