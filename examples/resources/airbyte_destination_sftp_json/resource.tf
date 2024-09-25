resource "airbyte_destination_sftp_json" "my_destination_sftpjson" {
  configuration = {
    destination_path = "/json_data"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 22
    username         = "Peyton_Lang"
  }
  definition_id = "77fd0c20-2086-4d39-ade6-0f942f937a3c"
  name          = "Ms. Ada Heidenreich"
  workspace_id  = "d11c7ed1-7b1d-45b0-8289-a0dc02329a5c"
}