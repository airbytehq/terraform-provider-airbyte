resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Kristin95"
  }
  definition_id = "9eaf9a8e-2157-4a85-a0c8-9e77fd0c2020"
  name          = "Rick Sporer"
  workspace_id  = "6de60f94-2f93-47a3-8595-08dd11c7ed17"
}