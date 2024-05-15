resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Shaina_Casper89"
  }
  definition_id = "af9a8e21-57a8-4560-889e-77fd0c202086"
  name          = "Norman Maggio"
  workspace_id  = "e60f942f-937a-43c5-9508-dd11c7ed17b1"
}